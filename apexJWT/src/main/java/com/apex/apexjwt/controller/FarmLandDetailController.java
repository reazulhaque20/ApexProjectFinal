package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.FarmLandDetail;
import com.apex.apexjwt.model.FarmerDetail;
import com.apex.apexjwt.model.ReportingFieldOfficer;
import com.apex.apexjwt.model.ReportingOffice;
import com.apex.apexjwt.response.FarmLandDetailUpdateRequest;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.FarmLandDetailService;
import com.apex.apexjwt.service.FarmerService;
import com.apex.apexjwt.service.ReportingFieldOfficerService;
import com.apex.apexjwt.service.ReportingOfficeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/farmLandDetail")
@RequiredArgsConstructor
@Log4j2
public class FarmLandDetailController {

    private final FarmLandDetailService farmLandDetailService;
    private final FarmerService farmerService;
    private final ReportingOfficeService reportingOfficeService;
    private final ReportingFieldOfficerService reportingFieldOfficerService;

    @GetMapping("/getAllFarmLand")
    public List<FarmLandDetail> getAllFarmLand(){
        return farmLandDetailService.getAllFarmLand();
    }

    @PostMapping("/createFarmLand")
    public Response createFarmLand(@RequestBody List<FarmLandDetail> farmLandDetailRequestList){
        Response response = new Response();
        for(FarmLandDetail farmLandDetail : farmLandDetailRequestList){
            if(farmLandDetail.getFarmLandType() != null){
                farmLandDetailService.createFarmLand(farmLandDetail);
            }
        }

        response.setMessage("Farm Land Created Successfully.");
        response.setMessageType("success");

        return response;
    }

    @GetMapping("/getFarmLandByFarmerOfficeOfficer/{farmerName}/{officeName}/{officerName}")
    public List<FarmLandDetail> getFarmLandByFarmerOfficeOfficer(@PathVariable("farmerName") String farmerName, @PathVariable("officeName") String officeName, @PathVariable("officerName") String officerName){
        return farmLandDetailService.getFarmLandByFarmerOfficeOfficer(farmerName, officeName, officerName);
    }

    @PutMapping("/updateFarmLandDetails")
    public Response updateFarmLandDetails(@RequestBody List<FarmLandDetailUpdateRequest> farmLandDetailUpdateRequestList){
        Response response = new Response();
        log.info("Starting Updating Farm Land Detail.");
        if(farmLandDetailUpdateRequestList.isEmpty()){
            log.error("Farm Land Detail Update List is Empty.");
            response = new Response("Error While Updating Farm Land Details.","error", 0L);
            return response;
        }

        for(FarmLandDetailUpdateRequest farmLandDetailUpdateRequest : farmLandDetailUpdateRequestList){
            if(farmLandDetailUpdateRequest.getSn() != 0 && farmLandDetailUpdateRequest.getId() != 0) {
                log.info("Farm Land Detail Object: " + farmLandDetailUpdateRequest);
                FarmerDetail farmerDetail = farmerService.getFarmerByFarmerName(farmLandDetailUpdateRequest.getFarmerName());
                ReportingOffice reportingOffice = reportingOfficeService.getReportingOfficeByOfficeName(farmLandDetailUpdateRequest.getReportingOfficeName());
                ReportingFieldOfficer reportingFieldOfficer = reportingFieldOfficerService.getReportingFieldOfficerByOfficerName(farmLandDetailUpdateRequest.getReportingFieldOfficerName());
                FarmLandDetail farmLandDetail = farmLandDetailService.getFarmLandById(farmLandDetailUpdateRequest.getId());
                farmLandDetail.setFarmer(farmerDetail);
                farmLandDetail.setReportingOffice(reportingOffice);
                farmLandDetail.setReportingFieldOfficer(reportingFieldOfficer);
                farmLandDetail.setId(farmLandDetailUpdateRequest.getId());
                farmLandDetail.setRegNo(farmLandDetailUpdateRequest.getRegNo());
                farmLandDetail.setFarmLandType(farmLandDetailUpdateRequest.getFarmLandType());
                farmLandDetail.setCultivationType(farmLandDetailUpdateRequest.getCultivationType());
                farmLandDetail.setOwnership(farmLandDetailUpdateRequest.getOwnership());
                farmLandDetail.setTopography(farmLandDetailUpdateRequest.getTopography());
                farmLandDetail.setLandArea(farmLandDetailUpdateRequest.getLandArea());
                farmLandDetail.setLat(farmLandDetailUpdateRequest.getLat());
                farmLandDetail.setLon(farmLandDetailUpdateRequest.getLon());
                farmLandDetail.setRemarks(farmLandDetailUpdateRequest.getRemarks());
                response = farmLandDetailService.updateFarmLandDetails(farmLandDetail);
            }

        }

        return response;
    }
}
