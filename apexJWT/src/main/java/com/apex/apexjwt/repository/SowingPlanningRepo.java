package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.SowingFarmLandPlanning;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SowingPlanningRepo extends JpaRepository<SowingFarmLandPlanning, Long> {
}
