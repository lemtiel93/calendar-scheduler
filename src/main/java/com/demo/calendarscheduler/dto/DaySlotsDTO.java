package com.demo.calendarscheduler.dto;

import java.time.LocalDate;
import java.util.List;

public class DaySlotsDTO {
    private LocalDate date;
    private Boolean open;
    private List<SlotDTO> slots;

    public DaySlotsDTO() {
    }

    public DaySlotsDTO(LocalDate date, boolean open, List<SlotDTO> slots) {
        this.date = date;
        this.open = open;
        this.slots = slots;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public boolean isOpen() {
        return open;
    }

    public void setOpen(boolean open) {
        this.open = open;
    }

    public List<SlotDTO> getSlots() {
        return slots;
    }

    public void setSlots(List<SlotDTO> slots) {
        this.slots = slots;
    }
}
