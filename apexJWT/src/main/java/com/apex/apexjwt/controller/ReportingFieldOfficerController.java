package com.apex.apexjwt.controller;


import com.apex.apexjwt.model.ReportingFieldOfficer;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.ReportingFieldOfficerService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/reportingFieldOfficer")
@RequiredArgsConstructor
public class ReportingFieldOfficerController {

    private final ReportingFieldOfficerService reportingFieldOfficerService;

    @GetMapping("/getAllReportingFieldOfficer")
    public List<ReportingFieldOfficer> getAllReportingFieldOfficer(){
        return reportingFieldOfficerService.getAllReportingFieldOfficer();
    }

    @GetMapping("/getAllActiveReportingFieldOfficer")
    public List<ReportingFieldOfficer> getAllActiveReportingFieldOfficer(){
        return reportingFieldOfficerService.getAllActiveReportingFieldOfficer();
    }

    @GetMapping("/getAllReportingFieldOfficerName")
    public List<String> getAllReportingFieldOfficerName(){
        return reportingFieldOfficerService.getAllReportingFieldOfficerName();
    }

    @PostMapping("/addOfficer")
    public Response addOfficer(@RequestBody ReportingFieldOfficer reportingFieldOfficer){
        Response response = reportingFieldOfficerService.addOfficer(reportingFieldOfficer);
        return response;
    }

    @PutMapping("/updateOfficer")
    public Response updateOfficer(@RequestBody ReportingFieldOfficer reportingFieldOfficer){
        Response response = reportingFieldOfficerService.updateOfficer(reportingFieldOfficer);
        return response;
    }
}
