package com.apex.apexjwt.service;

import com.apex.apexjwt.model.CropGradeList;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface CropGradeListService {

    List<CropGradeList> getAllCropGrade();
    Response addCropGradeList(CropGradeList cropGradeList);
    Response updateCropGradeList(CropGradeList cropGradeList);
}
