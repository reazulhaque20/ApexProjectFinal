package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.District;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DistrictRepo extends JpaRepository<District, Long> {

    @Query("SELECT u FROM District u WHERE u.status='active'")
    List<District> getAllActiveDistrict();

    @Query("SELECT u FROM District u")
    List<District> getAllDistrict();

    @Query("SELECT u FROM District u WHERE u.div.id=:divisionId")
    List<District> getDistrictByDivision(@Param("divisionId") Long divisionId);
}
