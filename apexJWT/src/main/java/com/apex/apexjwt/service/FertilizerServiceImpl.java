package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Fertilizer;
import com.apex.apexjwt.repository.FertilizerRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class FertilizerServiceImpl implements FertilizerService {

    private final FertilizerRepo fertilizerRepo;


    @Override
    public List<Fertilizer> getAllFertilizer() {
        return fertilizerRepo.findAll();
    }

    @Override
    public Optional<Fertilizer> getFertilizerByName(String fertilizerName) {
        return fertilizerRepo.getFertilizerByName(fertilizerName);
    }

    @Override
    public Optional<Fertilizer> getFertilizerById(Long fertilizerId) {
        return fertilizerRepo.findById(fertilizerId);
    }

    @Override
    public Response createFertilizer(Fertilizer fertilizer) {
        Response response =new Response();

        fertilizerRepo.save(fertilizer);

        response.setMessage("Fertilizer Created Successful.");
        response.setMessageType("SUCCESS");

        return response;
    }

    @Override
    public Response updateFertilizer(Fertilizer fertilizer){
        Fertilizer existingFertilizer = fertilizerRepo.getFertilizerById(fertilizer.getId());
        Response response = new Response();
        existingFertilizer.setFertilizerName(fertilizer.getFertilizerName());
        existingFertilizer.setFertilizerCost(fertilizer.getFertilizerCost());
        existingFertilizer.setFertilizerGrade(fertilizer.getFertilizerGrade());
        existingFertilizer.setFertilizerUom(fertilizer.getFertilizerUom());
        existingFertilizer.setFertilizerStatus(fertilizer.getFertilizerStatus());

        fertilizerRepo.save(existingFertilizer);

        response.setMessageType("SUCCESS");
        response.setMessage("Fertilizer Updated Successful.");

        return response;
    }


}
