package com.demo.calendarscheduler.dto;

import java.util.List;

public class SlotDTO {

    private String timeSlot;
    private List<ZoomAccountDTO> zoomAccounts;
    private int availableCount;

    public SlotDTO(){}

    public SlotDTO(String timeSlot, List<ZoomAccountDTO> zoomAccounts) {
        this.timeSlot = timeSlot;
        this.zoomAccounts = zoomAccounts;
        this.availableCount = (zoomAccounts != null) ? zoomAccounts.size() : 0;   
    }
    // Getters e Setters
    public String getTimeSlot() {
        return timeSlot;
    }

    public void setTimeSlot(String timeSlot) {
        this.timeSlot = timeSlot;
    }

    public int getAvailableCount() {
        return availableCount;
    }

    public void setAvailableCount(int availableCount) {
        this.availableCount = availableCount;
    }

    public List<ZoomAccountDTO> getZoomAccounts() {
        return zoomAccounts;
    }

    public void setZoomAccounts(List<ZoomAccountDTO> zoomAccounts) {
        this.zoomAccounts = zoomAccounts;
    }
}
