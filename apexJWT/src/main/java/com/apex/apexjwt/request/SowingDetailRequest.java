package com.apex.apexjwt.request;

import com.apex.apexjwt.model.SowingFarmLandPlanning;
import com.apex.apexjwt.model.SowingFarmLandPlanningCrop;
import lombok.Data;

import java.util.List;
@Data
public class SowingDetailRequest {
    private SowingFarmLandPlanning sowingFarmLandPlanning;
    private List<SowingFarmLandPlanningCrop> sowingFarmLandPlanningCropList;
}
