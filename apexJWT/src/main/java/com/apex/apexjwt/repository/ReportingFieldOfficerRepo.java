package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.ReportingFieldOfficer;
import jdk.internal.dynalink.linker.LinkerServices;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReportingFieldOfficerRepo extends JpaRepository<ReportingFieldOfficer, Long> {

    @Query("SELECT u.officerName FROM ReportingFieldOfficer u WHERE u.status='active'")
    List<String> getAllReportingFieldOfficeName();

    @Query("SELECT u FROM ReportingFieldOfficer u WHERE u.officerName=:officerName AND u.status='active'")
    ReportingFieldOfficer getReportingFieldOfficerByOfficerName(@Param("officerName") String officerName);


}
