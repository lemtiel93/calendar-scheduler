package com.demo.calendarscheduler.controller;

import com.demo.calendarscheduler.dto.DaySlotsDTO;
import com.demo.calendarscheduler.dto.SlotDTO;
import com.demo.calendarscheduler.service.CalendarService;
import com.demo.calendarscheduler.service.DayStatusService;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.temporal.TemporalAdjusters;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/calendar")
public class CalendarController {

    private final CalendarService calendarService;
    private final DayStatusService dayStatusService;

    public CalendarController(CalendarService calendarService, DayStatusService dayStatusService) {
        this.calendarService = calendarService;
        this.dayStatusService = dayStatusService;
    }

    /**
     * Endpoint per ottenere la settimana completa (lunedì-domenica),
     * comprensiva dello stato del giorno (aperto/chiuso) e degli slot orari.
     * 
     * @param day Una data qualsiasi della settimana (formato ISO: yyyy-MM-dd)
     * @return Una lista di DaySlotsDTO, uno per ogni giorno della settimana.
     */
    @GetMapping("/slots")
    public List<DaySlotsDTO> getWeeklySlots(@RequestParam("day") 
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate day) {
        
        List<DaySlotsDTO> weekSlots = new ArrayList<>();
        // Calcola il lunedì della settimana corrispondente al giorno fornito
        LocalDate monday = day.with(TemporalAdjusters.previousOrSame(DayOfWeek.MONDAY));
        for (int i = 0; i < 7; i++) {
            LocalDate currentDate = monday.plusDays(i);
            // Recupera gli slot per il giorno corrente
            List<SlotDTO> slots = calendarService.getAvailableSlots(currentDate.atStartOfDay());
            // Verifica lo stato del giorno tramite il DayStatusService
            Boolean open = dayStatusService.isWorkingDay(currentDate);
            weekSlots.add(new DaySlotsDTO(currentDate, open, slots));
        }
        return weekSlots;
    }
    
    /**
     * Endpoint per cambiare (toggle) lo stato di un giorno.
     * Utilizzato ad esempio per forzare un sabato ad essere lavorativo o un mercoledì a essere chiuso.
     *
     * @param date La data da aggiornare (formato ISO: yyyy-MM-dd)
     */
    @PutMapping("/days/status")
    public void updateDayStatus(@RequestParam("date") 
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate date) {
        dayStatusService.changeDayStatus(date);
    }
}
