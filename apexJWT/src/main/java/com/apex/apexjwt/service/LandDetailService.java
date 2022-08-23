package com.apex.apexjwt.service;

import com.apex.apexjwt.model.LandDetail;

import java.util.List;

public interface LandDetailService {
    LandDetail getLandDetailById(Long id);
    List<LandDetail> getAllLandDetails();
}
