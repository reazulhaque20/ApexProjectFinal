package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ContractDetail;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface ContractDetailsService {
    ContractDetail getContractDetailsById(Long id);
    ContractDetail addContractDetails(ContractDetail contractDetail);
    List<ContractDetail> getAllContractDetail();
}
