package com.apex.apexjwt.service;

import com.apex.apexjwt.model.CropVarietyDetail;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface CropVarietyDetailService {

    List<CropVarietyDetail> getAllCropVariety();
    Response addCropVariety(CropVarietyDetail cropVarietyDetail);
    Response updateCropVariety(CropVarietyDetail cropVarietyDetail);
}