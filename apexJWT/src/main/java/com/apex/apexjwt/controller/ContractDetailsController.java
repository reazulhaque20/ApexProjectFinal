package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.*;
import com.apex.apexjwt.repository.ContractDetailsRepo;
import com.apex.apexjwt.repository.ContractInputDetailsRepo;
import com.apex.apexjwt.repository.ContractPaymentDetailRepo;
import com.apex.apexjwt.repository.ContractSeasonRepo;
import com.apex.apexjwt.request.CreateContractRequest;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.ContractDetailsService;
import com.apex.apexjwt.service.ContractInputDetailService;
import com.apex.apexjwt.service.ContractPaymentDetailService;
import com.apex.apexjwt.service.ContractSeasonService;
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

        contractDetail = contractDetailsService.addContractDetails(contractDetail);


    }
}
