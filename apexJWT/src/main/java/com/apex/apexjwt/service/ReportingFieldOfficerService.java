package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ReportingFieldOfficer;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface ReportingFieldOfficerService {

    List<ReportingFieldOfficer> getAllReportingFieldOfficer();
    List<String> getAllReportingFieldOfficerName();
    ReportingFieldOfficer getReportingFieldOfficerByOfficerName(String officerName);
    Response addOfficer(ReportingFieldOfficer reportingFieldOfficer);
    Response updateOfficer(ReportingFieldOfficer reportingFieldOfficer);
}
