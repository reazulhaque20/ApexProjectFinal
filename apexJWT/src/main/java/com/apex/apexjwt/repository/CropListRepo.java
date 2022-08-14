package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.CropList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CropListRepo extends JpaRepository<CropList, Long> {

    @Query("SELECT u FROM CropList u WHERE u.cropCode=:cropCode")
    CropList getCropByCropCode(@Param("cropCode") String cropCode);

    @Query("SELECT u FROM CropList u WHERE u.cropName=:cropName")
    CropList getCropByCropName(@Param("cropName") String cropName);

    @Query("SELECT u FROM CropList u WHERE u.status='active'")
    List<CropList> getAllActiveCrops();
}
