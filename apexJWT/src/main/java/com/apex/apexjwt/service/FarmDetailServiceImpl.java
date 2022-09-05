package com.apex.apexjwt.service;

import com.apex.apexjwt.model.FarmDetail;
import com.apex.apexjwt.repository.FarmDetailRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FarmDetailServiceImpl implements FarmDetailService {

    private final FarmDetailRepo farmDetailRepo;

    @Override
    public List<FarmDetail> getAllFarmDetail() {
        return farmDetailRepo.findAll();
    }
}
