package com.demo.calendarscheduler.config;

import org.springframework.boot.ApplicationRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.demo.calendarscheduler.model.DayStatus;
import com.demo.calendarscheduler.repository.DayStatusRepository;

import java.time.LocalDate;


// Inizializza i record per i giorni del calendario per i prossimi 3 mesi
// Se il record per una data non esiste, lo crea con lo stato di default
@Configuration
public class DataInitializer {

    @Bean
    public ApplicationRunner dayStatusInitializer(DayStatusRepository dayStatusRepository) {
        return args -> {
            LocalDate today = LocalDate.now();
            LocalDate endDate = today.plusMonths(3);
            for (LocalDate date = today; !date.isAfter(endDate); date = date.plusDays(1)) {
                // Controlla se esiste già il record per questa data
                if (!dayStatusRepository.existsById(date)) {
                    // Imposta lo stato di default: feriali = true, weekend = false
                    Boolean defaultWorking = date.getDayOfWeek().getValue() < 6;
                    DayStatus dayStatus = new DayStatus(date, defaultWorking);
                    dayStatusRepository.save(dayStatus);
                }
            }
        };
    }
}