package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ReportingOffice;
import com.apex.apexjwt.repository.ReportingOfficeRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReportingOfficeServiceImpl implements ReportingOfficeService{

    private final ReportingOfficeRepo reportingOfficeRepo;

    @Override
    public List<ReportingOffice> getAllReportingOffice() {
        return reportingOfficeRepo.findAll();
    }

    @Override
    public List<String> getAllReportingOfficeName() {
        return reportingOfficeRepo.getAllReportingOfficeName();
    }

    @Override
    public ReportingOffice getReportingOfficeByOfficeName(String officeName) {
        return reportingOfficeRepo.getReportingOfficeByOfficeName(officeName);
    }

    @Override
    public Response addOffice(ReportingOffice reportingOffice) {
        Response response;
        reportingOfficeRepo.save(reportingOffice);
        return response = new Response("Reporting Office Add Successful.", "success", 0L);
    }

    @Override
    public Response updateOffice(ReportingOffice reportingOffice) {
        reportingOfficeRepo.save(reportingOffice);
        Response response = new Response("Reporting Office Successfully Updated.","success",0L);
        return response;
    }


}
