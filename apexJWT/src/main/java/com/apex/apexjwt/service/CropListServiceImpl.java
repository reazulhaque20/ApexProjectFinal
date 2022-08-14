package com.apex.apexjwt.service;

import com.apex.apexjwt.model.CropList;
import com.apex.apexjwt.repository.CropListRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CropListServiceImpl implements CropListService{

    private final CropListRepo cropListRepo;


    @Override
    public List<CropList> getAllCrops() {
        return cropListRepo.findAll();
    }

    @Override
    public List<CropList> getAllActiveCrops() {
        return cropListRepo.getAllActiveCrops();
    }

    @Override
    public CropList getCropByCropCode(String cropCode) {
        return cropListRepo.getCropByCropCode(cropCode);
    }

    @Override
    public CropList getCropByCropName(String cropName) {
        return cropListRepo.getCropByCropName(cropName);
    }

    @Override
    public Response addCropList(CropList cropList) {
        Response response;
        cropListRepo.save(cropList);
        response = new Response("Crop Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateCropList(CropList cropList) {
        Response response;
        cropListRepo.save(cropList);
        response = new Response("Crop Successfully Updated.", "success", 0L);
        return response;
    }

    @Override
    public Response deleteCropList(CropList cropList) {
        return null;
    }
}
