package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ContractInputDetail;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface ContractInputDetailService {
    List<ContractInputDetail> getContractInputDetailByContractId(Long id);
    Response addContractInputDetail(List<ContractInputDetail> contractInputDetailList);
}
