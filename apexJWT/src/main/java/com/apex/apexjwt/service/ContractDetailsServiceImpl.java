package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ContractDetail;
import com.apex.apexjwt.repository.ContractDetailsRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ContractDetailsServiceImpl implements ContractDetailsService {

    private final ContractDetailsRepo contractDetailsRepo;

    @Override
    public ContractDetail getContractDetailsById(Long id) {
        return contractDetailsRepo.getContractDetailById(id);
    }

    @Override
    public ContractDetail addContractDetails(ContractDetail contractDetail) {
        contractDetail = contractDetailsRepo.saveAndFlush(contractDetail);
        return contractDetail;
    }
}
