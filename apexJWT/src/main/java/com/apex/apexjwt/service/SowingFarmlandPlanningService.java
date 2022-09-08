package com.apex.apexjwt.service;

import com.apex.apexjwt.model.SowingFarmLandPlanning;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface SowingFarmlandPlanningService {
    SowingFarmLandPlanning addSowingFarmlandDetail(SowingFarmLandPlanning sowingFarmLandPlanning);
    List<SowingFarmLandPlanning> getAllSowingPlanning();
}
