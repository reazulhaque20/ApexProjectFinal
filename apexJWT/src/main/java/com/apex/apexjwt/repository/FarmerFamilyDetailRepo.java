package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.FarmerFamilyDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FarmerFamilyDetailRepo extends JpaRepository<FarmerFamilyDetail, Long> {

    @Query("SELECT u FROM FarmerFamilyDetail  u WHERE u.farmer.id=:farmerId and u.status='active'")
    List<FarmerFamilyDetail> getFarmerFamilyDetailByFarmerId(@Param("farmerId") Long farmerId);
}
