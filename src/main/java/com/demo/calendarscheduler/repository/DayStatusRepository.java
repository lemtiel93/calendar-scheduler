package com.demo.calendarscheduler.repository;

import com.demo.calendarscheduler.model.DayStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import java.time.LocalDate;

public interface DayStatusRepository extends JpaRepository<DayStatus, LocalDate> {
}