package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.FarmDetail;
import com.apex.apexjwt.service.FarmDetailService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("api/farmDetail")
public class FarmDetailController {
    private final FarmDetailService farmDetailService;

    @GetMapping("/getAllFarmDetail")
    List<FarmDetail> getAllFarmDetail(){
        return farmDetailService.getAllFarmDetail();
    }
}
