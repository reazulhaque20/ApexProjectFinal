package com.apex.apexjwt.service;

import com.apex.apexjwt.model.SeedMaster;
import com.apex.apexjwt.repository.SeedMasterRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SeedMasterServiceImpl implements SeedMasterService{

    private final SeedMasterRepo seedMasterRepo;

    public List<SeedMaster> getAllSeedMaster(){
        return seedMasterRepo.findAll();
    }
}
