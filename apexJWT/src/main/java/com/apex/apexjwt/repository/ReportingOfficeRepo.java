package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.ReportingOffice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReportingOfficeRepo extends JpaRepository<ReportingOffice, Long> {

    @Query("SELECT u.officeName FROM ReportingOffice u WHERE u.status='active'")
    List<String> getAllReportingOfficeName();

    @Query("SELECT u FROM ReportingOffice u WHERE u.status='active'")
    List<ReportingOffice> getAllActiveReportingOffice();

    @Query("SELECT u FROM ReportingOffice u WHERE u.officeName=:officeName AND u.status='active'")
    ReportingOffice getReportingOfficeByOfficeName(@Param("officeName") String officeName);
}
