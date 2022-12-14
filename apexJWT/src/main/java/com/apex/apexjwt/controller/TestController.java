package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.ContractSeason;
import com.apex.apexjwt.model.*;
import com.apex.apexjwt.request.AddContractRequest;
import com.apex.apexjwt.request.CreateContractRequest;
import com.apex.apexjwt.service.*;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/test")
@RequiredArgsConstructor
public class TestController {

//    private final FarmerService farmerService;
//    private final ReportingFieldOfficerService reportingFieldOfficerService;
//    private final ReportingOfficeService reportingOfficeService;
//    private final LandDetailService landDetailService;
//    private final SeasonListService seasonListService;
//    private final CropListService cropListService;
//    private final CropVarietyDetailService cropVarietyDetailService;
//    private final ContractDetailsService contractDetailsService;
//    private final ContractSeasonService contractSeasonService;
//    private final ContractInputDetailService contractInputDetailService;
//    private final ContractPaymentDetailService contractPaymentDetailService;

//    @GetMapping("/getContractSeasonList")
//    public List<ContractSeason> getContractSeasonList(){
//        List<ContractSeason> contractSeasonList = new ArrayList<>();
//        ContractSeason contractSeason = new ContractSeason();
//        ReportingOffice reportingOffice = reportingOfficeService.getReportingOfficeByOfficeName("Office-1");
//        ReportingFieldOfficer reportingFieldOfficer = reportingFieldOfficerService.getReportingFieldOfficerByOfficerName("Officer-1");
//
//        FarmerDetail farmerDetail = farmerService.getFarmerById(2L);
//        ContractDetail contractDetail = new ContractDetail();
//        contractDetail.setId(1L);
//        contractDetail.setFarmer(farmerDetail);
//        contractDetail.setOfficer(reportingFieldOfficer);
//        contractDetail.setOffice(reportingOffice);
//        contractDetail.setStatus("active");
//
//        LandDetail landDetail = landDetailService.getLandDetailById(1L);
//        SeasonList seasonList = seasonListService.getSeasonByID(1L);
//        CropList cropList = cropListService.getCropByCropCode("CRP-001");
//        CropVarietyDetail cropVarietyDetail = cropVarietyDetailService.getCropVarietyDetailById(6L);
//
//        contractSeason.setContract(contractDetail);
//        contractSeason.setLand(landDetail);
//        contractSeason.setLandArea(landDetail.getLandSize());
//        contractSeason.setSeason(seasonList);
//        contractSeason.setCrop(cropList);
//        contractSeason.setCropVariety(cropVarietyDetail);
//        contractSeason.setStatus("active");
//
//        contractSeasonList.add(contractSeason);
//
//        return contractSeasonList;
//    }

//    @GetMapping("/getAddContract")
//    public AddContractRequest getAddContract(){
//        AddContractRequest addContractRequest = new AddContractRequest();
//
//        ContractDetail contractDetail = contractDetailsService.getContractDetailsById(2L);
//        List<ContractSeason> contractSeasonList = contractSeasonService.getContractSeasonByContractId(2L);
//        List<ContractInputDetail> contractInputDetailList = contractInputDetailService.getContractInputDetailByContractId(2L);
//        ContractPaymentDetail contractPaymentDetail = contractPaymentDetailService.getContractPaymentDetailByContactId(2L);
//
//        addContractRequest.setContractDetail(contractDetail);
//        addContractRequest.setContractSeasonList(contractSeasonList);
//        addContractRequest.setContractInputDetailList(contractInputDetailList);
//        addContractRequest.setContractPaymentDetail(contractPaymentDetail);
//
//        return addContractRequest;
//    }

//    @PostMapping("/createContractDetail")
//    public void createContractDetail(@RequestBody CreateContractRequest createContractRequest){
//        System.out.println(createContractRequest);
//
//    }
}
