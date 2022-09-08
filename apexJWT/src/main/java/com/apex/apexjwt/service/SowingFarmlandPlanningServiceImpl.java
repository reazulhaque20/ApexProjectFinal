package com.apex.apexjwt.service;

import com.apex.apexjwt.model.SowingFarmLandPlanning;
import com.apex.apexjwt.repository.SowingPlanningRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class SowingFarmlandPlanningServiceImpl implements SowingFarmlandPlanningService {
    private final SowingPlanningRepo sowingPlanningRepo;
    @Override
    public SowingFarmLandPlanning addSowingFarmlandDetail(SowingFarmLandPlanning sowingFarmLandPlanning) {
        SowingFarmLandPlanning sfp = sowingPlanningRepo.saveAndFlush(sowingFarmLandPlanning);
        return sfp;
    }

    @Override
    public List<SowingFarmLandPlanning> getAllSowingPlanning() {
        return sowingPlanningRepo.findAll();
    }
}
