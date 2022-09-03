package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ContractInputDetail;
import com.apex.apexjwt.repository.ContractInputDetailsRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class ContractInputDetailServiceImpl implements ContractInputDetailService {

    private final ContractInputDetailsRepo contractInputDetailsRepo;

    @Override
    public List<ContractInputDetail> getContractInputDetailByContractId(Long id) {
        return contractInputDetailsRepo.getContractInputDetailByContractId(id);
    }

    @Override
    public Response addContractInputDetail(List<ContractInputDetail> contractInputDetailList) {
        Response response;
        contractInputDetailsRepo.saveAll(contractInputDetailList);
        response = new Response("Contract Input Detail Successfully Added.", "success", 0L);
        return response;
    }
}
