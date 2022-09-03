package com.apex.apexjwt.service;

import com.apex.apexjwt.model.FarmInputCategory;
import com.apex.apexjwt.response.Response;
import org.w3c.dom.stylesheets.LinkStyle;

import java.util.List;

public interface FarmInputCategoryService {
    List<FarmInputCategory> getAllInputCategory();
    Response addInputCategory(FarmInputCategory farmInputCategory);
    Response updateInputCategory(FarmInputCategory farmInputCategory);
    FarmInputCategory getFarmInputCategoryByName(String inputCatName);
}
