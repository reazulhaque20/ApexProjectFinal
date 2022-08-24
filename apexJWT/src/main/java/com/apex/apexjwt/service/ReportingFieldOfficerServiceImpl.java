package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ReportingFieldOfficer;
import com.apex.apexjwt.repository.ReportingFieldOfficerRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReportingFieldOfficerServiceImpl implements ReportingFieldOfficerService{

    private final ReportingFieldOfficerRepo reportingFieldOfficerRepo;

    @Override
    public List<ReportingFieldOfficer> getAllReportingFieldOfficer() {
        return reportingFieldOfficerRepo.findAll();
    }

    @Override
    public List<ReportingFieldOfficer> getAllActiveReportingFieldOfficer() {
        return reportingFieldOfficerRepo.getAllActiveReportingFieldOfficeName();
    }

    @Override
    public List<String> getAllReportingFieldOfficerName() {
        return reportingFieldOfficerRepo.getAllReportingFieldOfficeName();
    }

    @Override
    public ReportingFieldOfficer getReportingFieldOfficerByOfficerName(String officerName) {
        return reportingFieldOfficerRepo.getReportingFieldOfficerByOfficerName(officerName);
    }

    @Override
    public Response addOfficer(ReportingFieldOfficer reportingFieldOfficer) {
        Response response;
        reportingFieldOfficerRepo.save(reportingFieldOfficer);
        response = new Response("Field Officer Successfully Added","success",0L);
        return response;
    }

    @Override
    public Response updateOfficer(ReportingFieldOfficer reportingFieldOfficer) {
        Response response;
        reportingFieldOfficerRepo.save(reportingFieldOfficer);
        response = new Response("Field Officer Successfully Updated","success",0L);
        return response;
    }


}
