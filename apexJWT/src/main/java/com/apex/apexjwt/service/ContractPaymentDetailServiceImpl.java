package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ContractPaymentDetail;
import com.apex.apexjwt.repository.ContractPaymentDetailRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ContractPaymentDetailServiceImpl implements ContractPaymentDetailService {

    private final ContractPaymentDetailRepo contractPaymentDetailRepo;

    @Override
    public ContractPaymentDetail getContractPaymentDetailByContactId(Long id) {
        return contractPaymentDetailRepo.getContractPaymentDetailByContractId(id);
    }

    @Override
    public Response addContractPaymentDetail(ContractPaymentDetail contractPaymentDetail) {
        Response response;
        contractPaymentDetailRepo.save(contractPaymentDetail);
        response = new Response("Contract Payment Detail successfully Added.", "success", 0L);
        return response;
    }
}
