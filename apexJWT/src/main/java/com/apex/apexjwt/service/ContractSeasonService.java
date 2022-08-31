package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ContractSeason;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface ContractSeasonService {
    List<ContractSeason> getContractSeasonByContractId(Long id);
    Response addContractSeason(ContractSeason contractSeason);
}
