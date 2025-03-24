package com.demo.calendarscheduler.repository;

import com.demo.calendarscheduler.model.Appointment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AppointmentRepository extends JpaRepository<Appointment, Long> {
    // Qui puoi definire metodi di query personalizzati, se necessario
}
