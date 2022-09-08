package com.apex.apexjwt.service;

import com.apex.apexjwt.model.SowingFarmLandPlanningCrop;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface SowingPlanningCropsService {
    Response addSowingPlanningCrops(List<SowingFarmLandPlanningCrop> sowingFarmLandPlanningCropList);
    List<SowingFarmLandPlanningCrop> getAllSowingPlanningCrop();
}
