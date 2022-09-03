package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ContractSeason;
import com.apex.apexjwt.repository.ContractSeasonRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class ContractSeasonServiceImpl implements ContractSeasonService {

    private final ContractSeasonRepo contractSeasonRepo;

    @Override
    public List<ContractSeason> getContractSeasonByContractId(Long id) {
        return contractSeasonRepo.getContractSeasonByContractId(id);
    }

    @Override
    public Response addContractSeason(List<ContractSeason> contractSeasonList) {
        Response response;
        contractSeasonRepo.saveAll(contractSeasonList);

        response = new Response("Contract Season Successfully Added", "success", 0L);
        return response;
    }
}
