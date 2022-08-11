package com.apex.apexjwt.service;

import com.apex.apexjwt.model.FarmLandDetail;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface FarmLandDetailService {

    List<FarmLandDetail> getAllFarmLand();
    Response createFarmLand(FarmLandDetail farmLandDetail);
    List<FarmLandDetail> getFarmLandByFarmerOfficeOfficer(String farmerName, String officeName, String officerName);
    FarmLandDetail getFarmLandById(Long id);
    Response updateFarmLandDetails(FarmLandDetail farmLandDetail);
}
