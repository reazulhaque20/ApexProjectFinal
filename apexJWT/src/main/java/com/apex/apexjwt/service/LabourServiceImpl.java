package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Labour;
import com.apex.apexjwt.repository.LabourRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class LabourServiceImpl implements LabourService{

    private final LabourRepo labourRepo;

    @Override
    public List<Labour> getAll(){
        return labourRepo.findAll();
    }

    @Override
    public Response createLabour(Labour labour) {
        Response response = new Response();
        labourRepo.save(labour);
        response.setMessage("Labour Created Successful");
        response.setMessageType("SUCCESS");
        return response;
    }

    @Override
    public Response updateLabour(Labour labour) {
        Response response = new Response();

        labourRepo.save(labour);
        response.setMessage("Labour Updated Successful");
        response.setMessageType("SUCCESS");
        return response;
    }

    @Override
    public Optional<Labour> getLabourById(Long labourId) {
        return labourRepo.findById(labourId.longValue());
    }

    @Override
    public Optional<Labour> getLabourByName(String labourName) {
        return null;
    }

    @Override
    public List<Labour> getLabourListByLabourType(String labourType) {
        return labourRepo.getLabourByLabourType(labourType);
    }

    @Override
    public List<Labour> getLabourByLabourPaymentType(String labourPaymentType) {
        return labourRepo.getLaburByLabourPaymentType(labourPaymentType);
    }


}
