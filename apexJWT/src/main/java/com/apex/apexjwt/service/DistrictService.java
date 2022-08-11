package com.apex.apexjwt.service;

import com.apex.apexjwt.model.District;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface DistrictService {

    List<District> getAllActiveDistrict();
    List<District> getAllDistrict();
    List<District> getDistrictByDivision(Long divisionId);
    Response addDistrict(District district);
    Response updateDistrict(District district);
}
