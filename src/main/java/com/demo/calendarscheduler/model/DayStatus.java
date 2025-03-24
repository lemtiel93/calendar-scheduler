package com.demo.calendarscheduler.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.LocalDate;

@Entity
@Table(name = "day_status")
public class DayStatus {

    @Id
    private LocalDate date;
    private Boolean working;

    public DayStatus() {}

    public DayStatus(LocalDate date, Boolean working) {
        this.date = date;
        this.working = working;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public Boolean getWorking() {
        return working;
    }

    public void setWorking(Boolean working) {
        this.working = working;
    }
}
