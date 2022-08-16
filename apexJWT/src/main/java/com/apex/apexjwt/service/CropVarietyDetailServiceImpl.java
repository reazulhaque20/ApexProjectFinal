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

    private final CropVarietyDetailRepo cropVarietyDetailRepo;


    @Override
    public List<CropVarietyDetail> getAllCropVariety() {
        return cropVarietyDetailRepo.findAll();
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
