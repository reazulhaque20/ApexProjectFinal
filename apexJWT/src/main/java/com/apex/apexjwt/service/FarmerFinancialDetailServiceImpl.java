package com.apex.apexjwt.service;

import com.apex.apexjwt.model.FarmerFinancialDetail;
import com.apex.apexjwt.repository.FarmerFinancialDetailRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class FarmerFinancialDetailServiceImpl implements FarmerFinancialDetailService{

    private final FarmerFinancialDetailRepo farmerFinancialDetailRepo;

    @Override
    public FarmerFinancialDetail getFarmerDetailByFarmerId(Long farmerId) {
        return farmerFinancialDetailRepo.getFarmerFinancialDetailByFarmerId(farmerId);
    }

    @Override
    public FarmerFinancialDetail createFarmerFinancialDetails(FarmerFinancialDetail farmerFinancialDetail) {
        return farmerFinancialDetailRepo.saveAndFlush(farmerFinancialDetail);
    }
}
