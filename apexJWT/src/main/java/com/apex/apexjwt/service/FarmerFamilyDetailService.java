package com.apex.apexjwt.service;

import com.apex.apexjwt.model.FarmerFamilyDetail;

import java.util.List;

public interface FarmerFamilyDetailService {

    List<FarmerFamilyDetail> getFarmerFamilyDetailByFarmerId(Long farmerId);
    FarmerFamilyDetail createFarmerFamilyDetail(FarmerFamilyDetail farmerFamilyDetail);
}
