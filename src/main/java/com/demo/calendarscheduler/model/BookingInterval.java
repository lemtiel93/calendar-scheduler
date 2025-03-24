package com.demo.calendarscheduler.model;

import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.*;

@Entity
@Table(name = "booking_intervals")
public class BookingInterval {

    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private LocalDateTime dateStart;
    private LocalDateTime dateEnd;

    @ManyToOne
    @JoinColumn(name = "zoom_account_id")
    @JsonBackReference
    private ZoomAccount zoomAccount;

    // Costruttore di default necessario per JPA
    public BookingInterval() {
    }

    public BookingInterval(LocalDateTime dateStart, LocalDateTime dateEnd, ZoomAccount zoomAccount) {
        this.dateStart = dateStart;
        this.dateEnd = dateEnd;
        this.zoomAccount = zoomAccount;
    }

    public LocalDateTime getStart() {
        return dateStart;
    }

    public void setStart(LocalDateTime dateStart) {
        this.dateStart = dateStart;
    }

    public LocalDateTime getEnd() {
        return dateEnd;
    }

    public void setEnd(LocalDateTime dateEnd) {
        this.dateEnd = dateEnd;
    }

    public ZoomAccount getZoomAccount() {
        return zoomAccount;
    }
    public void setZoomAccount(ZoomAccount zoomAccount) {
        this.zoomAccount = zoomAccount;
    }
    // funzione che torna true se l'intervallo di tempo si sovrappone con un altro intervallo di tempo
    public boolean overlaps(LocalDateTime otherStart, LocalDateTime otherEnd){
        return otherStart.isBefore(this.dateEnd) &&  otherEnd.isAfter(this.dateStart); 
    }
}
