package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.CropVarietyDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CropVarietyDetailRepo extends JpaRepository<CropVarietyDetail, Long> {

    @Query("SELECT u FROM CropVarietyDetail u WHERE u.id=:id")
    CropVarietyDetail getCropVarietyDetailsById(@Param("id") Long id);

    @Query("SELECT u FROM CropVarietyDetail u WHERE u.crop.cropName=:cropName")
    List<CropVarietyDetail> getAllVarietyByCropName(String cropName);

    @Query("SELECT u FROM CropVarietyDetail u WHERE u.crop.cropCode=:cropCode")
    List<CropVarietyDetail> getAllVarietyByCropCode(String cropCode);

    @Query("SELECT u FROM CropVarietyDetail u WHERE u.varietyCode=:varietyCode")
    List<CropVarietyDetail> getAllVarietyByVarietyCode(String varietyCode);

    @Query("SELECT u FROM CropVarietyDetail u WHERE u.varietyName=:varietyName")
    CropVarietyDetail getCropVarietyDetailByVarietyName(@Param("varietyName") String varietyName);
}
