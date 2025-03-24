package com.demo.calendarscheduler.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.demo.calendarscheduler.model.ZoomAccount;
import com.demo.calendarscheduler.repository.ZoomAccountRepository;

@RestController
@RequestMapping("/api/zoom-accounts")
public class ZoomAccountController {

    private final ZoomAccountRepository zoomAccountRepository;

    public ZoomAccountController(ZoomAccountRepository zoomAccountRepository) {
        this.zoomAccountRepository = zoomAccountRepository;
    }

    @GetMapping
    public List<ZoomAccount> getAllZoomAccounts() {
        return zoomAccountRepository.findAll();
}

    @PostMapping
    public ResponseEntity<ZoomAccount> createZoomAccount(@RequestBody ZoomAccount zoomAccount){
        ZoomAccount created = zoomAccountRepository.save(zoomAccount);
        if (created == null) {
            return ResponseEntity.badRequest().build();
        }
        return ResponseEntity.ok(created);
    }
}
