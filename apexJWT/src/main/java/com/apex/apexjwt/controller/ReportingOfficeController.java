package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.ReportingOffice;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.ReportingOfficeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/reportingOffice")
@RequiredArgsConstructor
public class ReportingOfficeController {

    private final ReportingOfficeService reportingOfficeService;

    @GetMapping("/getAllReportingOffice")
    public List<ReportingOffice> getAllReportingOffice(){
        return reportingOfficeService.getAllReportingOffice();
    }

    @GetMapping("/getAllActiveReportingOffice")
    public List<ReportingOffice> getAllActiveReportingOffice(){
        return reportingOfficeService.getAllActiveReportingOffice();
    }

    @GetMapping("/getAllReportingOfficeName")
    public List<String> getAllReportingOfficeName(){
        return reportingOfficeService.getAllReportingOfficeName();
    }


    @PostMapping("/addOffice")
    public Response addOffice(@RequestBody ReportingOffice reportingOffice){
        return reportingOfficeService.addOffice(reportingOffice);
    }

    @PutMapping("/updateOffice")
    public Response updateOffice(@RequestBody ReportingOffice reportingOffice){
        Response response = reportingOfficeService.updateOffice(reportingOffice);
        return response;
    }

    @PutMapping("/deleteOffice")
    public Response deleteOffice(@RequestBody ReportingOffice reportingOffice){
        reportingOffice.setStatus("inActive");
        Response response = reportingOfficeService.updateOffice(reportingOffice);
        return response;
    }

}
