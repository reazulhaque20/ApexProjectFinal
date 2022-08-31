package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ContractPaymentDetail;
import com.apex.apexjwt.response.Response;

public interface ContractPaymentDetailService {
    ContractPaymentDetail getContractPaymentDetailByContactId(Long id);
    Response addContractPaymentDetail(ContractPaymentDetail contractPaymentDetail);
}
