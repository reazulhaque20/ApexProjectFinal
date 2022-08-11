package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Division;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface DivisionService {

    List<Division> getAllActiveDivision();
    List<Division> getAllDivision();
    Response addDivision(Division division);
    Response updateDivision(Division division);
}
