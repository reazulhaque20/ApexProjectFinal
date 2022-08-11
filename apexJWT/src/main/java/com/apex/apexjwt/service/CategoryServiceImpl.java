package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Category;
import com.apex.apexjwt.repository.CategoryRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepo categoryRepo;

    public List<Category> getAllCategory(){
        return categoryRepo.findAll();
    }
}
