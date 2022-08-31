package com.apex.apexjwt.service;

import com.apex.apexjwt.model.CropVarietyDetail;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface CropVarietyDetailService {

    CropVarietyDetail getCropVarietyDetailById(Long id);
    List<CropVarietyDetail> getAllCropVariety();
    List<CropVarietyDetail> getCropVarietyDetailByCropName(String cropName);
    Response addCropVariety(CropVarietyDetail cropVarietyDetail);
    Response updateCropVariety(CropVarietyDetail cropVarietyDetail);
    CropVarietyDetail getCropVarietyDetailByVarietyName(String varietyName);
}
