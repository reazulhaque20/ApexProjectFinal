package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.FarmLandDetail;
import com.apex.apexjwt.model.FarmerFinancialDetail;
import jdk.internal.dynalink.linker.LinkerServices;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FarmerFinancialDetailRepo extends JpaRepository<FarmerFinancialDetail, Long> {

    @Query("SELECT u FROM FarmerFinancialDetail u WHERE u.farmer.id=:farmerId and u.status='active'")
    FarmerFinancialDetail getFarmerFinancialDetailByFarmerId(@Param("farmerId") Long farmerId);


}
