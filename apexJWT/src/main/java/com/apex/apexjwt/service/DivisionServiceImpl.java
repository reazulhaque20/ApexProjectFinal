package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Division;
import com.apex.apexjwt.repository.DivisionRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DivisionServiceImpl implements DivisionService{

    private final DivisionRepo divisionRepo;


    @Override
    public List<Division> getAllActiveDivision() {
        return divisionRepo.getAllActiveDivision();
    }

    @Override
    public List<Division> getAllDivision() {
        return divisionRepo.getAllDivision();
    }

    @Override
    public Response addDivision(Division division) {
        divisionRepo.save(division);
        Response response = new Response("Division Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateDivision(Division division) {
        divisionRepo.save(division);
        Response response = new Response("Division Successfully Updated.", "success", 0L);
        return response;
    }
}
