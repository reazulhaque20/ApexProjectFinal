package com.apex.apexjwt.service;

import com.apex.apexjwt.model.CropVarietyDetail;
import com.apex.apexjwt.repository.CropVarietyDetailRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CropVarietyDetailServiceImpl implements CropVarietyDetailService{
    @Override
    public CropVarietyDetail getCropVarietyDetailByVarietyName(String varietyName) {
        return cropVarietyDetailRepo.getCropVarietyDetailByVarietyName(varietyName);
    }

    private final CropVarietyDetailRepo cropVarietyDetailRepo;


    @Override
    public CropVarietyDetail getCropVarietyDetailById(Long id) {
        return cropVarietyDetailRepo.getCropVarietyDetailsById(id);
    }

    @Override
    public List<CropVarietyDetail> getAllCropVariety() {
        return cropVarietyDetailRepo.findAll();
    }

    @Override
    public List<CropVarietyDetail> getCropVarietyDetailByCropName(String cropName) {
        return cropVarietyDetailRepo.getAllVarietyByCropName(cropName);
    }

    @Override
    public Response addCropVariety(CropVarietyDetail cropVarietyDetail) {
        Response response;
        cropVarietyDetailRepo.save(cropVarietyDetail);
        response = new Response("Crop Variety Detail Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateCropVariety(CropVarietyDetail cropVarietyDetail) {
        Response response;
        cropVarietyDetailRepo.save(cropVarietyDetail);
        response = new Response("Crop Variety Detail Successfully Updated.", "success", 0L);
        return response;
    }
}
