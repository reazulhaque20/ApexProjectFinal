package com.apex.apexjwt.service;

import com.apex.apexjwt.model.FarmerDetail;
import com.apex.apexjwt.model.FarmerFamilyDetail;
import com.apex.apexjwt.model.FarmerFinancialDetail;
import com.apex.apexjwt.repository.FarmerFamilyDetailRepo;
import com.apex.apexjwt.repository.FarmerFinancialDetailRepo;
import com.apex.apexjwt.repository.FarmerRepo;
import com.apex.apexjwt.request.FarmerAddRequest;
import com.apex.apexjwt.response.FarmerDetailResponse;
import com.apex.apexjwt.response.FarmerDetailResponseList;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Log4j2
public class FarmerServiceImpl implements FarmerService{

    private final FarmerRepo farmerRepo;
    private final FarmerFamilyDetailRepo farmerFamilyDetailRepo;
    private final FarmerFinancialDetailRepo farmerFinancialDetailRepo;


    @Override
    public List<FarmerDetailResponse> getAllFarmer() {

        FarmerDetailResponseList farmerDetailResponseList = new FarmerDetailResponseList();
        FarmerDetailResponse farmerDetailResponse = new FarmerDetailResponse();
        List<FarmerDetailResponse> farmerDetailResponses = new ArrayList<>();
        List<FarmerDetail> farmerDetailList = farmerRepo.findAll();
        for(FarmerDetail farmerDetail : farmerDetailList){
            farmerDetailResponse = new FarmerDetailResponse();
            List<FarmerFamilyDetail> farmerFamilyDetailList = farmerFamilyDetailRepo.getFarmerFamilyDetailByFarmerId(farmerDetail.getId());
            FarmerFinancialDetail farmerFinancialDetail = farmerFinancialDetailRepo.getFarmerFinancialDetailByFarmerId(farmerDetail.getId());
            farmerDetailResponse.setFarmerDetail(farmerDetail);
            farmerDetailResponse.setFarmerFamilyDetailList(farmerFamilyDetailList);
            farmerDetailResponse.setFarmerFinancialDetail(farmerFinancialDetail);
            farmerDetailResponses.add(farmerDetailResponse);

        }

        return farmerDetailResponses;
    }

    @Override
    public FarmerDetail createFarmer(FarmerDetail farmerDetail) {
        Response response = new Response();

        farmerRepo.save(farmerDetail);
        FarmerDetail farmerDetailForSave = farmerRepo.saveAndFlush(farmerDetail);

        return farmerDetailForSave;
    }

    @Override
    public Response updateFarmer(FarmerAddRequest farmerAddRequest) {
        Boolean success = true;
        log.info("Stating Update Farmer Details: " + farmerAddRequest.getFarmerDetail());
        try {
            FarmerDetail ed = farmerAddRequest.getFarmerDetail();
            farmerRepo.save(ed);
            log.info("Farmer Detail Update Successful.");
        }catch(Exception exception){
            success=false;
            log.error("Failed to update farmer detail.");
        }
        log.info("End of Updating Farmer Details.");
        log.info("Starting Update Farmer Family Details: " + farmerAddRequest.getFarmerFamilyDetailList());
        try {
            farmerFamilyDetailRepo.saveAll(farmerAddRequest.getFarmerFamilyDetailList());
            log.info("Farmer Family Details Update Successful.");
        }catch(Exception exception){
            success = false;
            log.error("Failed to Update Farmer Family Details.");
        }
        log.info("End of Updating Farmer Family Details.");
        log.info("Staring of Farmer Financial Details." + farmerAddRequest.getFarmerFinancialDetail());
        try{
            farmerFinancialDetailRepo.save(farmerAddRequest.getFarmerFinancialDetail());
            log.info("Farmer Financial Details Update Successful.");
        }catch(Exception exception){
            success = false;
            log.error("Failed to Update Farmer Financial Details.");
        }
        log.info("End of Updating Farmer Financial Details.");
        Response response;
        if(success) {
            response = new Response("Farmer Updated Successfully.", "success", 0L);
        }else{
            response = new Response("Failed To Update Farmer Data.", "error", 0L);
        }
        return response;
    }

    @Override
    public FarmerDetail getFarmerById(Long farmerId) {
        return farmerRepo.getFarmerDetailById(farmerId);
    }

    @Override
    public FarmerDetailResponse getFarmerDetail(Long farmerId){
        FarmerDetailResponse farmerDetailResponse = new FarmerDetailResponse();
        new FarmerDetail();
        FarmerDetail farmerDetail;
        List<FarmerFamilyDetail> farmerFamilyDetailsList = farmerFamilyDetailRepo.getFarmerFamilyDetailByFarmerId(farmerId);
        if(!farmerFamilyDetailsList.isEmpty()){
            for (FarmerFamilyDetail farmerFamilyDetail : farmerFamilyDetailsList) {
                farmerDetail = farmerFamilyDetail.getFarmer();
                if(farmerDetail != null){
                    farmerDetailResponse.setFarmerDetail(farmerDetail);
                    break;
                }else {
                    farmerDetailResponse.setMessage("Error While Getting Farmer Details.");
                    farmerDetailResponse.setMessageType("ERROR");
                    return farmerDetailResponse;
                }
            } // End of Foreach
            farmerDetailResponse.setFarmerFamilyDetailList(farmerFamilyDetailsList);
        }else{
            farmerDetailResponse.setMessage("Error While Getting Farmer Details.");
            farmerDetailResponse.setMessageType("ERROR");
            return farmerDetailResponse;
        }

        FarmerFinancialDetail farmerFinancialDetail = farmerFinancialDetailRepo.getFarmerFinancialDetailByFarmerId(farmerId);
        if(farmerFinancialDetail != null){
            farmerDetailResponse.setFarmerFinancialDetail(farmerFinancialDetail);
        }else{
            farmerDetailResponse.setMessage("Error While Getting Farmer Details.");
            farmerDetailResponse.setMessageType("ERROR");
            return farmerDetailResponse;
        }
        farmerDetailResponse.setMessage("Successfully Retrieve Farmer Details");
        farmerDetailResponse.setMessageType("SUCCESS");
        return farmerDetailResponse;
    }

    @Override
    public Boolean getFarmerByFarmerNameNidMobileNo(String farmerName, String nid, String mobileNo) {

        Boolean isFarmerExist = false;

        FarmerDetail farmerDetail = farmerRepo.getFarmerByFarmerNameNidMobileNo(farmerName, nid, mobileNo);

        if(farmerDetail != null){
            isFarmerExist = true;
        }

        return isFarmerExist;
    }

    @Override
    public List<String> getAllFarmerNames() {
        return farmerRepo.getAllFarmerNames();
    }

    @Override
    public List<FarmerDetail> getAllFarmers() {
        return farmerRepo.getAllFarmers();
    }

    @Override
    public Response deleteFarmer(Long farmerId){
        Response response;
        log.info("Inactive Farmer Detail. Farmer ID: " + farmerId);
        try {
            FarmerDetail farmerDetail = farmerRepo.getFarmerDetailById(farmerId);
            farmerDetail.setStatus("inActive");
            farmerRepo.save(farmerDetail);
        }catch(Exception exception){
            log.error("Error while Inactive Farmer Detail.");
            response = new Response("Error While Inactive Farmer Detail.", "error", 0L);
            return response;
        }
        log.info("End of inactivation Farmer Detail.");
        log.info("Inactive Farmer Family Details. ");
        List<FarmerFamilyDetail> fFamilyDetailList = new ArrayList<>();
        try{
            List<FarmerFamilyDetail> farmerFamilyDetailList = farmerFamilyDetailRepo.getFarmerFamilyDetailByFarmerId(farmerId);
            for(FarmerFamilyDetail farmerFamilyDetail : farmerFamilyDetailList){
                farmerFamilyDetail.setStatus("inActive");
                fFamilyDetailList.add(farmerFamilyDetail);
            }
            farmerFamilyDetailRepo.saveAll(fFamilyDetailList);
        }catch (Exception exception){
            log.error("Error While Inactive Farmer Family Details.");
            response = new Response("Error While Inactive Farmer Family Details.", "error", 0L);
            return response;
        }
        log.info("End of inactivation Farmer Family Detail.");
        log.info("Inactive Farmer Financial Details. ");

        try{
            FarmerFinancialDetail farmerFinancialDetail = farmerFinancialDetailRepo.getFarmerFinancialDetailByFarmerId(farmerId);
            farmerFinancialDetail.setStatus("inActive");
            farmerFinancialDetailRepo.save(farmerFinancialDetail);
        }catch (Exception exception){
            log.error("Error While Inactive Farmer Financial Details.");
            response = new Response("Error While Inactive Farmer Financial Details.", "error", 0L);
            return response;
        }
        response = new Response("Farmer Successfully Deleted.", "SUCCESS", 0L);
        return response;
    }

    @Override
    public FarmerDetail getFarmerByFarmerName(String farmerName) {
        FarmerDetail farmerDetail = farmerRepo.getFarmerByFarmerName(farmerName);
        return farmerDetail;
    }
}
