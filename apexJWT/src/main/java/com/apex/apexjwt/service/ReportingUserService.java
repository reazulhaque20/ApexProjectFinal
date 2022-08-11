package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ReportingUser;

import java.util.List;

public interface ReportingUserService {

    List<ReportingUser> findAllReportingUserByDepartment(String department);
}
