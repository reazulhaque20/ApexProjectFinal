package com.apex.apexjwt.service;

import com.apex.apexjwt.model.FarmerFamilyDetail;
import com.apex.apexjwt.repository.FarmerFamilyDetailRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FarmerFamilyDetailServiceImpl implements FarmerFamilyDetailService{

    private final FarmerFamilyDetailRepo farmerFamilyDetailRepo;

    @Override
    public List<FarmerFamilyDetail> getFarmerFamilyDetailByFarmerId(Long farmerId) {
        return farmerFamilyDetailRepo.getFarmerFamilyDetailByFarmerId(farmerId);
    }

    @Override
    public FarmerFamilyDetail createFarmerFamilyDetail(FarmerFamilyDetail farmerFamilyDetail) {
        return farmerFamilyDetailRepo.saveAndFlush(farmerFamilyDetail);
    }
}
