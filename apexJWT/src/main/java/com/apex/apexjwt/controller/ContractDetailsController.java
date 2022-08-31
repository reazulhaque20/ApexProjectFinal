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
    private final CropVarietyDetailService cropVarietyDetailService;

    @PostMapping("/createContractDetail")
    public void createContractDetail(@RequestBody CreateContractRequest createContractRequest){
        FarmerDetail farmerDetail = createContractRequest.getFarmer();
        ReportingOffice reportingOffice = createContractRequest.getOffice();
        ReportingFieldOfficer reportingFieldOfficer = createContractRequest.getOfficer();
        WarehouseList warehouseList = createContractRequest.getWarehouse();

        ContractDetail contractDetail = new ContractDetail();
        contractDetail.setFarmer(farmerDetail);
        contractDetail.setOffice(reportingOffice);
        contractDetail.setOfficer(reportingFieldOfficer);
        contractDetail.setStatus("active");

        //contractDetail = contractDetailsService.addContractDetails(contractDetail);

        for(SeasonDetailRequest seasonDetailRequest : createContractRequest.getSeasonDetailRequestList()){
            if(seasonDetailRequest.getId() != 0){
                SeasonList seasonList1 = seasonListService.getSeasonBySeasonName(seasonDetailRequest.getSeasonName());
                LandDetail landDetail = landDetailService.getLandDetailByLandName(seasonDetailRequest.getLandName());
            }
        }

        for(InputDetailRequest inputDetailRequest : createContractRequest.getInputDetailRequestList()){
            if(inputDetailRequest.getId() != 0){
                log.info(inputDetailRequest);
            }
        }
    }
}
