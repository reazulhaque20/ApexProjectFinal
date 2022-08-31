package com.apex.apexjwt.service;

import com.apex.apexjwt.model.LandDetail;
import com.apex.apexjwt.repository.LandDetailRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class LandDetailServiceImpl implements LandDetailService {

    private final LandDetailRepo landDetailRepo;

    @Override
    public LandDetail getLandDetailById(Long id) {
        return landDetailRepo.getLandDetailById(id);
    }

    @Override
    public List<LandDetail> getAllLandDetails() {
        return landDetailRepo.findAll();
    }

    @Override
    public LandDetail getLandDetailByLandName(String landName) {
        return landDetailRepo.getLandDetailByLandName(landName);
    }
}
