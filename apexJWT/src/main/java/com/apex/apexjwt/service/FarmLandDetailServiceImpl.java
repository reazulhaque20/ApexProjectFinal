package com.apex.apexjwt.service;

import com.apex.apexjwt.model.FarmLandDetail;
import com.apex.apexjwt.repository.FarmLandDetailRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FarmLandDetailServiceImpl implements FarmLandDetailService{

    private final FarmLandDetailRepo farmLandDetailRepo;


    @Override
    public List<FarmLandDetail> getAllFarmLand() {
        return farmLandDetailRepo.findAll();
    }

    @Override
    public Response createFarmLand(FarmLandDetail farmLandDetail) {
        Response response = new Response();
        farmLandDetailRepo.save(farmLandDetail);
        response.setMessage("Farm Land Created Successfully.");
        response.setMessageType("success");
        return response;
    }

    @Override
    public List<FarmLandDetail> getFarmLandByFarmerOfficeOfficer(String farmerName, String officeName, String officerName) {
        return farmLandDetailRepo.getFarmLandByFarmerOfficeOfficer(farmerName, officeName, officerName);
    }

    @Override
    public FarmLandDetail getFarmLandById(Long id) {
        return farmLandDetailRepo.getFarmLandDetailById(id);
    }

    @Override
    public Response updateFarmLandDetails(FarmLandDetail farmLandDetail) {
        Response response;

        farmLandDetailRepo.save(farmLandDetail);
        response = new Response("Farm Land Detail Update Successful.", "success", 0L);
        return response;
    }


}
