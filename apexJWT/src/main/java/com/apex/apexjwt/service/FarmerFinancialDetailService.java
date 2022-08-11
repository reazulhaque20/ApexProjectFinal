package com.apex.apexjwt.service;

import com.apex.apexjwt.model.FarmerFinancialDetail;

public interface FarmerFinancialDetailService {

    FarmerFinancialDetail getFarmerDetailByFarmerId(Long farmerId);
    FarmerFinancialDetail createFarmerFinancialDetails(FarmerFinancialDetail farmerFinancialDetail);
}
