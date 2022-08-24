package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ReportingOffice;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface ReportingOfficeService {

    List<ReportingOffice> getAllReportingOffice();
    List<ReportingOffice> getAllActiveReportingOffice();
    List<String> getAllReportingOfficeName();
    ReportingOffice getReportingOfficeByOfficeName(String officeName);
    Response addOffice(ReportingOffice reportingOffice);
    Response updateOffice(ReportingOffice reportingOffice);
}
