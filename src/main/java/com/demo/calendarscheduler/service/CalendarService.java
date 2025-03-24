package com.demo.calendarscheduler.service;

import com.demo.calendarscheduler.dto.SlotDTO;
import com.demo.calendarscheduler.dto.ZoomAccountDTO;
import com.demo.calendarscheduler.model.Appointment;
import com.demo.calendarscheduler.model.ZoomAccount;
import com.demo.calendarscheduler.repository.AppointmentRepository;
import com.demo.calendarscheduler.repository.ZoomAccountRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.List;


@Service
public class CalendarService {

    private final AppointmentRepository appointmentRepository;
    private final ZoomAccountRepository zoomAccountRepository;
    private final DayStatusService dayStatusService;

    public CalendarService(AppointmentRepository appointmentRepository,
                           ZoomAccountRepository zoomAccountRepository,
                           DayStatusService dayStatusService) {
        this.appointmentRepository = appointmentRepository;
        this.zoomAccountRepository = zoomAccountRepository;
        this.dayStatusService = dayStatusService;
    }

    @Transactional
    public Appointment createAppointment(Appointment appointment) {
        LocalDateTime scheduledDateTime = appointment.getScheduledTime();
        
        // Validazioni base
        if (!isDateValid(scheduledDateTime) || !dayStatusService.isWorkingDay(scheduledDateTime.toLocalDate())) {
            return null;
        }
        if (!isTimeSlotValid(scheduledDateTime.toLocalTime())) {
            System.out.println("Orario non valido.");
            return null;
        }
        
        Optional<ZoomAccount> selectedAccount = selectZoomAccount(appointment, scheduledDateTime);
        if (selectedAccount.isEmpty()) {
            System.out.println("Nessun account Zoom disponibile.");
            return null;
        }
        ZoomAccount account = selectedAccount.get();
        account.addBooking(scheduledDateTime, scheduledDateTime.plusHours(1));
        appointment.setZoomAccount(account);
        return appointmentRepository.save(appointment);
    }

    private boolean isDateValid(LocalDateTime scheduledDateTime) {
        return !scheduledDateTime.toLocalDate().isBefore(LocalDate.now());
    }
    
    private boolean isTimeSlotValid(LocalTime startTime) {
        boolean validMorning = !startTime.isBefore(LocalTime.of(9, 0)) && !startTime.isAfter(LocalTime.of(12, 0));
        boolean validAfternoon = !startTime.isBefore(LocalTime.of(14, 0)) && !startTime.isAfter(LocalTime.of(17, 0));
        return validMorning || validAfternoon;
    }
    
    private Optional<ZoomAccount> selectZoomAccount(Appointment appointment, LocalDateTime scheduledDateTime) {
        // Se l'utente ha specificato un account, usalo
        if (appointment.getZoomAccount() != null && appointment.getZoomAccount().getId() != null) {
            return zoomAccountRepository.findById(appointment.getZoomAccount().getId())
                    .filter(account -> account.isAvailableFor(scheduledDateTime, scheduledDateTime.plusHours(1)));
        }
        // Altrimenti, cerca il primo account disponibile
        List<ZoomAccount> accounts = zoomAccountRepository.findAll();
        return accounts.stream()
                .filter(account -> account.isAvailableFor(scheduledDateTime, scheduledDateTime.plusHours(1)))
                .findFirst();
    }

    public List<SlotDTO> getAvailableSlots(LocalDateTime dayTime) {
        LocalDate day = dayTime.toLocalDate();
        List<SlotDTO> slots = new ArrayList<>();

        LocalTime morningStart = LocalTime.of(9, 0);
        LocalTime morningEnd = LocalTime.of(13, 0);
        LocalTime afternoonStart = LocalTime.of(14, 0);
        LocalTime afternoonEnd = LocalTime.of(18, 0);

        List<ZoomAccount> allAccounts = zoomAccountRepository.findAll();

        // Genera slot per la fascia mattutina
        for (LocalTime slotStart = morningStart; slotStart.isBefore(morningEnd); slotStart = slotStart.plusHours(1)) {
            slots.add(createSlot(day, slotStart, slotStart.plusHours(1), allAccounts));
        }
        // Genera slot per la fascia pomeridiana
        for (LocalTime slotStart = afternoonStart; slotStart.isBefore(afternoonEnd); slotStart = slotStart.plusHours(1)) {
            slots.add(createSlot(day, slotStart, slotStart.plusHours(1), allAccounts));
        }
        return slots;
    }
    
    private SlotDTO createSlot(LocalDate day, LocalTime slotStart, LocalTime slotEnd, List<ZoomAccount> allAccounts) {
        String timeSlotStr = slotStart.toString() + " - " + slotEnd.toString();
        LocalDateTime startDateTime = LocalDateTime.of(day, slotStart);
        LocalDateTime endDateTime = LocalDateTime.of(day, slotEnd);
        List<ZoomAccountDTO> availableAccounts = allAccounts.stream()
                .filter(account -> account.isAvailableFor(startDateTime, endDateTime))
                .map(account -> new ZoomAccountDTO(account.getId(), account.getEmail()))
                .collect(Collectors.toList());
        return new SlotDTO(timeSlotStr, availableAccounts);
    }

    public Boolean isSlotFree(LocalDate day, LocalTime start, LocalTime end){
        LocalDateTime startDateTime = LocalDateTime.of(day, start);
        LocalDateTime endDateTime = LocalDateTime.of(day, end);
        List<ZoomAccount> accounts = zoomAccountRepository.findAll();
        return accounts.stream().anyMatch(account -> account.isAvailableFor(startDateTime, endDateTime));
    }
}
