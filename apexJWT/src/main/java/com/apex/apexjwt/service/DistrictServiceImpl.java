package com.apex.apexjwt.service;

import com.apex.apexjwt.model.District;
import com.apex.apexjwt.repository.DistrictRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DistrictServiceImpl implements DistrictService{

    private final DistrictRepo districtRepo;


    @Override
    public List<District> getAllActiveDistrict() {
        return districtRepo.getAllActiveDistrict();
    }

    @Override
    public List<District> getAllDistrict() {
        return districtRepo.getAllDistrict();
    }

    @Override
    public List<District> getDistrictByDivision(Long divisionId) {
        return districtRepo.getDistrictByDivision(divisionId);
    }

    @Override
    public Response addDistrict(District district) {
        districtRepo.save(district);
        Response response = new Response("District Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateDistrict(District district) {
        districtRepo.save(district);
        Response response = new Response("District Updated Added.", "success", 0L);
        return response;
    }


}
