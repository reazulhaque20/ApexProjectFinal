package com.apex.apexjwt.service;

import com.apex.apexjwt.model.CropGradeList;
import com.apex.apexjwt.repository.CropGradeListRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CropGradeListServiceImpl implements CropGradeListService{

    private final CropGradeListRepo cropGradeListRepo;


    @Override
    public List<CropGradeList> getAllCropGrade() {
        return cropGradeListRepo.findAll();
    }

    @Override
    public Response addCropGradeList(CropGradeList cropGradeList) {
        Response response;
        cropGradeListRepo.save(cropGradeList);
        response = new Response("Crop Grade List Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateCropGradeList(CropGradeList cropGradeList) {
        Response response;
        cropGradeListRepo.save(cropGradeList);
        response = new Response("Crop Grade List Successfully Updated.", "success", 0L);
        return response;
    }
}
