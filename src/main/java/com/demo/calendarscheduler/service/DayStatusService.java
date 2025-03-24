package com.demo.calendarscheduler.service;

import java.time.LocalDate;
import org.springframework.stereotype.Service;

import com.demo.calendarscheduler.model.DayStatus;
import com.demo.calendarscheduler.repository.DayStatusRepository;

@Service
public class DayStatusService {
 
    private final DayStatusRepository dayStatusRepository;

    public DayStatusService(DayStatusRepository dayStatusRepository){
        this.dayStatusRepository = dayStatusRepository;
    }

    public void changeDayStatus(LocalDate date){
        DayStatus dayStatus = dayStatusRepository.findById(date).orElse(null);
        if (dayStatus!=null){
            dayStatus.setWorking(!dayStatus.getWorking());
            dayStatusRepository.save(dayStatus);
        }
    }

    public Boolean isWorkingDay(LocalDate date){
        // essendo che popolo la repository con 3 mesi di anticipo metto un limite
        LocalDate bookingLimit = LocalDate.now().plusMonths(3);
        if(date.isAfter(bookingLimit)){
            System.out.println("Data oltre il limite di prenotazione");
            return false;
        }

        DayStatus dayStatus = dayStatusRepository.findById(date)
        .orElse(new DayStatus(date, date.getDayOfWeek().getValue() < 6));
        return dayStatus.getWorking();
    }

}
