package com.demo.calendarscheduler.controller;

import java.util.List;
import com.demo.calendarscheduler.model.Appointment;
import com.demo.calendarscheduler.repository.AppointmentRepository;
import com.demo.calendarscheduler.service.CalendarService;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api/calendar/appointments")
public class AppointmentController {
    
    private final CalendarService calendarService;
    private final AppointmentRepository appointmentRepository;

    public AppointmentController(CalendarService calendarService, AppointmentRepository appointmentRepository){
        this.calendarService = calendarService;
        this.appointmentRepository = appointmentRepository;
    }
    
    @GetMapping 
    public List<Appointment> getAllAppointments() {
        return appointmentRepository.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Appointment> getAppointmentById(@PathVariable Long id) {
        return appointmentRepository.findById(id)
            .map(ResponseEntity::ok)
            .orElse(ResponseEntity.notFound().build());
}
    @PostMapping
    public ResponseEntity<Appointment> createAppointment(@RequestBody Appointment appointment) {
        Appointment created = calendarService.createAppointment(appointment);
        if (created == null) {
            return ResponseEntity.badRequest().build();
        }
        return ResponseEntity.ok(created);
    }
}
