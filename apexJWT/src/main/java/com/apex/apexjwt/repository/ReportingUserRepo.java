package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.ReportingUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReportingUserRepo extends JpaRepository<ReportingUser, Long> {

    @Query("SELECT u FROM ReportingUser u WHERE u.department=:department and u.status='Active'")
    List<ReportingUser> findReportingUserByDepartment(@Param("department") String department);
}
