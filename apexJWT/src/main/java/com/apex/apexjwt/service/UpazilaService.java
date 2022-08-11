package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Upazila;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface UpazilaService {

    List<Upazila> getAllUpazila();
    List<Upazila> getAllActiveUpazila();
    List<Upazila> getUpazilaByDivIdAndDisId(Long divId, Long disId);
    Response addUpazila(Upazila upazila);
    Response updateUpazila(Upazila upazila);
}
