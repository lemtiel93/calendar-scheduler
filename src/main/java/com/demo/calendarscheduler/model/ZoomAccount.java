package com.demo.calendarscheduler.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name = "zoom_accounts")
public class ZoomAccount {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String email;
    
    @OneToMany(mappedBy = "zoomAccount", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonManagedReference
    private List<BookingInterval> bookings = new ArrayList<>();

    public ZoomAccount(){}

    public ZoomAccount(String email){
        this.email = email;
    }
    
    public Long getId() { 
        return id;
    }
    public void setId(Long id) {
        this.id = id; 
    }

    public String getEmail() { 
        return email; 
    }

    public void setEmail(String email) { 
        this.email = email; 
    }
    public List<BookingInterval> getBookings() {
        return bookings;
    }
    public void setBookings(List<BookingInterval> bookings) {
        this.bookings = bookings;
    }

    public boolean isAvailableFor(LocalDateTime start, LocalDateTime end) {
        for (BookingInterval interval : bookings) {
            if (interval.overlaps(start, end)) {
                return false;
            }
        }
        return true;
    }

    public void addBooking(LocalDateTime start, LocalDateTime end){
        bookings.add(new BookingInterval(start, end, this));
    }
}
