package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.SowingFarmLandPlanning;
import com.apex.apexjwt.model.SowingFarmLandPlanningCrop;
import com.apex.apexjwt.request.SowingDetailRequest;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.SowingFarmlandPlanningService;
import com.apex.apexjwt.service.SowingPlanningCropsService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("api/sowing/")
@RequiredArgsConstructor
public class SowingPlanningController {
    private final SowingFarmlandPlanningService sowingFarmlandPlanningService;
    private final SowingPlanningCropsService sowingPlanningCropsService;

    @GetMapping("/getAllSowingCrops")
    List<SowingFarmLandPlanningCrop> getAllSowingCrops(){
        return sowingPlanningCropsService.getAllSowingPlanningCrop();
    }

    @PostMapping("/addSowingPlanning")
    Response addSowingPlanning(@RequestBody SowingDetailRequest sowingDetailRequest){
        SowingFarmLandPlanning sowingFarmLandPlanning = sowingFarmlandPlanningService.addSowingFarmlandDetail(sowingDetailRequest.getSowingFarmLandPlanning());
        List<SowingFarmLandPlanningCrop> forDB = new ArrayList<>();
        List<SowingFarmLandPlanningCrop> sowingFarmLandPlanningCrops = sowingDetailRequest.getSowingFarmLandPlanningCropList();

        for(SowingFarmLandPlanningCrop crop : sowingFarmLandPlanningCrops){
            crop.setFarmLandPlanning(sowingFarmLandPlanning);
            forDB.add(crop);
        }

        sowingPlanningCropsService.addSowingPlanningCrops(forDB);

        Response response = new Response("Sowing Planning Added Successfully.", "success", 0L);
        return response;
    }
}
