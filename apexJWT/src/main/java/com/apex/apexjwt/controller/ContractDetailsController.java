package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.*;
import com.apex.apexjwt.repository.ContractDetailsRepo;
import com.apex.apexjwt.repository.ContractInputDetailsRepo;
import com.apex.apexjwt.repository.ContractPaymentDetailRepo;
import com.apex.apexjwt.repository.ContractSeasonRepo;
import com.apex.apexjwt.request.CreateContractRequest;
import com.apex.apexjwt.request.InputDetailRequest;
import com.apex.apexjwt.request.SeasonDetailRequest;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("api/contract")
@RequiredArgsConstructor
@Log4j2
public class ContractDetailsController {

    private final ContractDetailsService contractDetailsService;
    private final ContractSeasonService contractSeasonService;
    private final ContractInputDetailService contractInputDetailService;
    private final ContractPaymentDetailService contractPaymentDetailService;
    private final SeasonListService seasonListService;
    private final LandDetailService landDetailService;
    private final CropListService cropListService;
    private final CropVarietyDetailService cropVarietyDetailService;
    private final FarmInputCategoryService farmInputCategoryService;
    private final ProductService productService;

    @PostMapping("/createContractDetail")
    public Response createContractDetail(@RequestBody CreateContractRequest createContractRequest){
        Response response;
        FarmerDetail farmerDetail = createContractRequest.getFarmer();
        ReportingOffice reportingOffice = createContractRequest.getOffice();
        ReportingFieldOfficer reportingFieldOfficer = createContractRequest.getOfficer();
        WarehouseList warehouseList = createContractRequest.getWarehouse();

        ContractDetail contractDetail = new ContractDetail();
        contractDetail.setFarmer(farmerDetail);
        contractDetail.setOffice(reportingOffice);
        contractDetail.setOfficer(reportingFieldOfficer);
        contractDetail.setStatus("active");

        try{
            contractDetail = contractDetailsService.addContractDetails(contractDetail);
            response = new Response("Contract Detail Crested Successfully Created", "success", 0L);
        }catch(Exception exception){
            response = new Response("Failed To Create Contract Detail", "error", 0L);
        }
        List<ContractSeason> contractSeasonList = new ArrayList<>();
        ContractSeason contractSeason = new ContractSeason();
        for(SeasonDetailRequest seasonDetailRequest : createContractRequest.getSeasonDetailRequestList()){
            if(seasonDetailRequest.getId() != 0){
                SeasonList seasonList1 = seasonListService.getSeasonBySeasonName(seasonDetailRequest.getSeasonName());
                log.info("SeasonList: " + seasonList1);
                LandDetail landDetail = landDetailService.getLandDetailByLandName(seasonDetailRequest.getLandName());
                log.info("landDetail: " + landDetail);
                CropList cropList = cropListService.getCropByCropName(seasonDetailRequest.getCropName());
                log.info("CropList: " + cropList);
                CropVarietyDetail cropVarietyDetail = cropVarietyDetailService.getCropVarietyDetailByVarietyName(seasonDetailRequest.getCropVarietyName());
                log.info("Crop Variety: " + cropVarietyDetail);
                contractSeason.setContract(contractDetail);
                contractSeason.setLand(landDetail);
                contractSeason.setLandArea(landDetail.getLandSize());
                contractSeason.setSeason(seasonList1);
                contractSeason.setCrop(cropList);
                contractSeason.setCropVariety(cropVarietyDetail);
                contractSeason.setStatus("active");

                contractSeasonList.add(contractSeason);
                contractSeason = new ContractSeason();
            }
        }
        try {
            contractSeasonService.addContractSeason(contractSeasonList);
            response = new Response("Success", "success", 0L);
        }catch(Exception exception){
            response = new Response("Error", "error", 0L);
        }
        ContractInputDetail contractInputDetail = new ContractInputDetail();
        List<ContractInputDetail> contractInputDetailList = new ArrayList<>();

        for(InputDetailRequest inputDetailRequest : createContractRequest.getInputDetailRequestList()){
            if(inputDetailRequest.getId() != 0){
                log.info("Input Detail Request: " + inputDetailRequest);
                FarmInputCategory farmInputCategory = farmInputCategoryService.getFarmInputCategoryByName(inputDetailRequest.getInputCategoryName());
                log.info("Farm Input Category: " + farmInputCategory);
                Product product = productService.getProductByName(inputDetailRequest.getProductName());
                log.info("Product: " + product);
                contractInputDetail.setContract(contractDetail);
                contractInputDetail.setInputCategory(farmInputCategory);
                contractInputDetail.setProduct(product);
                contractInputDetail.setStockQty(product.getProductQty());
                contractInputDetail.setUnit(product.getProductUom());
                contractInputDetail.setPrice(product.getProductPrice());
                contractInputDetail.setDistributionQty(inputDetailRequest.getDistributionQty());
                contractInputDetail.setSubTotal(inputDetailRequest.getSubTotal());
                contractInputDetail.setStatus("active");
                contractInputDetailList.add(contractInputDetail);
                contractInputDetail = new ContractInputDetail();
            }
        } // End of For
        try {
            contractInputDetailService.addContractInputDetail(contractInputDetailList);
            response = new Response("Success", "success", 0L);
        }catch(Exception exception){
            response = new Response("Error", "error", 0L);
        }
        ContractPaymentDetail contractPaymentDetail = new ContractPaymentDetail();

        contractPaymentDetail.setContract(contractDetail);
        contractPaymentDetail.setTotalAmount(createContractRequest.getPaymentDetail().getTotalAmount());
        contractPaymentDetail.setPaymentAmount(createContractRequest.getPaymentDetail().getPaymentAmount());
        contractPaymentDetail.setLoanAmount(createContractRequest.getPaymentDetail().getLoanAmount());
        contractPaymentDetail.setTotalDueAmount(createContractRequest.getPaymentDetail().getTotalDueAmount());

        try {
            contractPaymentDetailService.addContractPaymentDetail(contractPaymentDetail);
            response = new Response("Success", "success", 0L);
        }catch (Exception exception){
            response = new Response("Error", "error", 0L);
        }

        if(response.getMessageType().equalsIgnoreCase("success")){
            return response = new Response("Contract Created Successfully", "success", 0L);
        }else{
            return response = new Response("Failed To Create Contract", "error", 0L);
        }
    }
}
