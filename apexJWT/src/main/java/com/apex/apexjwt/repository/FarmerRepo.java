package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.FarmerDetail;
import com.apex.apexjwt.response.Response;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FarmerRepo extends JpaRepository<FarmerDetail, Long> {

    @Query("SELECT u FROM FarmerDetail u WHERE u.id=:farmerId and u.status='active'")
    FarmerDetail getFarmerDetailById(@Param("farmerId") Long farmerId);

    @Query("SELECT u FROM FarmerDetail u WHERE u.status='active' and u.farmerName=:farmerName or u.nid=:nid or u.mobile=:mobileNo")
    FarmerDetail getFarmerByFarmerNameNidMobileNo(@Param("farmerName") String farmerName, @Param("nid") String nid, @Param("mobileNo") String mobileNo);

    @Query("SELECT u.farmerName FROM FarmerDetail u where u.status='active'")
    List<String> getAllFarmerNames();

    @Query("SELECT u FROM FarmerDetail u where u.status='active'")
    List<FarmerDetail> getAllFarmers();

    @Query("SELECT u FROM FarmerDetail u WHERE u.farmerName=:farmerName")
    FarmerDetail getFarmerByFarmerName(@Param("farmerName") String farmerName);
}
