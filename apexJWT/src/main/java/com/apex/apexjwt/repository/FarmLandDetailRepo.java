package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.FarmLandDetail;
import com.apex.apexjwt.model.FarmerDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FarmLandDetailRepo extends JpaRepository<FarmLandDetail, Long> {

    @Query("SELECT u FROM FarmLandDetail u WHERE u.farmer.farmerName=:farmerName AND u.reportingOffice.officeName=:reportingOfficeName AND u.reportingFieldOfficer.officerName=:fieldOfficerName")
    List<FarmLandDetail> getFarmLandByFarmerOfficeOfficer(@Param("farmerName") String farmerName, @Param("reportingOfficeName") String reportingOfficeName, @Param("fieldOfficerName") String fieldOfficerName);

    @Query("SELECT u FROM FarmLandDetail u WHERE u.id=:id")
    FarmLandDetail getFarmLandDetailById(@Param("id") Long id);
}
