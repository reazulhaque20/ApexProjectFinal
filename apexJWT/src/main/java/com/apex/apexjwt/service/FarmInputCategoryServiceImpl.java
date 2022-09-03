package com.apex.apexjwt.service;

import com.apex.apexjwt.model.FarmInputCategory;
import com.apex.apexjwt.repository.FarmInputCategoryRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FarmInputCategoryServiceImpl implements FarmInputCategoryService{
    private final FarmInputCategoryRepo farmInputCategoryRepo;


    @Override
    public List<FarmInputCategory> getAllInputCategory() {
        return farmInputCategoryRepo.findAll();
    }

    @Override
    public Response addInputCategory(FarmInputCategory farmInputCategory) {
        Response response;
        farmInputCategoryRepo.save(farmInputCategory);
        response = new Response("Farm Input Category Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateInputCategory(FarmInputCategory farmInputCategory) {
        Response response;
        farmInputCategoryRepo.save(farmInputCategory);
        response = new Response("Farm Input Category Successfully Updated.", "success", 0L);
        return response;
    }

    @Override
    public FarmInputCategory getFarmInputCategoryByName(String inputCatName) {
        return farmInputCategoryRepo.getFarmInputCategoryByName(inputCatName);
    }
}
