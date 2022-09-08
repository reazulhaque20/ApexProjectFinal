package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.SowingFarmLandPlanningCrop;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SowingPlanningCropsRepo extends JpaRepository<SowingFarmLandPlanningCrop, Long> {
}
