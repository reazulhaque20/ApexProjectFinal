package com.apex.apexjwt.service;

import com.apex.apexjwt.model.SowingFarmLandPlanningCrop;
import com.apex.apexjwt.repository.SowingPlanningCropsRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class SowingPlanningCropsServiceImpl implements SowingPlanningCropsService {
    private final SowingPlanningCropsRepo sowingPlanningCropsRepo;
    @Override
    public Response addSowingPlanningCrops(List<SowingFarmLandPlanningCrop> sowingFarmLandPlanningCropList) {
        sowingPlanningCropsRepo.saveAll(sowingFarmLandPlanningCropList);
        Response response = new Response("Sowing Planning Crops Added Successfully.", "success", 0L);
        return response;
    }

    @Override
    public List<SowingFarmLandPlanningCrop> getAllSowingPlanningCrop() {
        return sowingPlanningCropsRepo.findAll();
    }
}
