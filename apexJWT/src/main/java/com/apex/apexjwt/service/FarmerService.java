package com.apex.apexjwt.service;

import com.apex.apexjwt.model.FarmerDetail;
import com.apex.apexjwt.request.FarmerAddRequest;
import com.apex.apexjwt.response.FarmerDetailResponse;
import com.apex.apexjwt.response.FarmerDetailResponseList;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface FarmerService {

    List<FarmerDetailResponse> getAllFarmer();
    FarmerDetail createFarmer(FarmerDetail farmerDetail);
    Response updateFarmer(FarmerAddRequest farmerAddRequest);
    FarmerDetail getFarmerById(Long farmerId);
    FarmerDetailResponse getFarmerDetail(Long farmerId);
    Boolean getFarmerByFarmerNameNidMobileNo(String farmerName, String nid, String mobileNo);
    List<String> getAllFarmerNames();
    List<FarmerDetail> getAllFarmers();
    Response deleteFarmer(Long farmerId);
    FarmerDetail getFarmerByFarmerName(String farmerName);
}
