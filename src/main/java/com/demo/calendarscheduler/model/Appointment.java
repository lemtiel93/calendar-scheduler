package com.demo.calendarscheduler.model;

import java.time.LocalDateTime;

import jakarta.persistence.*;

@Entity
@Table(name = "appointments")
public class Appointment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private LocalDateTime scheduledTime;

    // Relazione One-to-One con ZoomAccount
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "zoom_account_id")
    private ZoomAccount zoomAccount; 

    // Costruttore di default
    public Appointment() {
    }

    // Costruttore con parametri
    public Appointment(String title, LocalDateTime scheduledTime, ZoomAccount zoomAccount) {
        this.title = title;
        this.scheduledTime = scheduledTime;
        this.zoomAccount = zoomAccount;
    }

    public Long getId(){
        return id;
    }

    public void setId(Long id){
        this.id = id;
    }

    public String getTitle(){
        return title;
    }
    
    public void setTitle(String title){
        this.title = title;
    }

    public LocalDateTime getScheduledTime(){
        return scheduledTime;
    }

    public void setScheduledTime(LocalDateTime scheduledTime){
        this.scheduledTime = scheduledTime;
    }

    public ZoomAccount getZoomAccount(){
        return zoomAccount;
    }

    public void setZoomAccount(ZoomAccount zoomAccount){
        this.zoomAccount = zoomAccount;
    }
}
