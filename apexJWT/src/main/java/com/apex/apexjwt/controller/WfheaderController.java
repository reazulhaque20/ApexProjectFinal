package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.Wfheader;
import com.apex.apexjwt.service.WfheaderService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/wfheader")
@RequiredArgsConstructor
public class WfheaderController {

    private final WfheaderService wfheaderService;

    @GetMapping("/getAllwfheaders")
    public List<Wfheader> getAllHeaders(){
        return wfheaderService.findAll();
    }
}
