package com.apex.apexjwt.service;

import com.apex.apexjwt.model.CropList;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface CropListService {
    List<CropList> getAllCrops();
    List<CropList> getAllActiveCrops();
    CropList getCropByCropCode(String cropCode);
    CropList getCropByCropName(String cropName);
    Response addCropList(CropList cropList);
    Response updateCropList(CropList cropList);
    Response deleteCropList(CropList cropList);
}
