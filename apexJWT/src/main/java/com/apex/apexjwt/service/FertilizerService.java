package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Fertilizer;
import com.apex.apexjwt.response.Response;

import java.util.List;
import java.util.Optional;

public interface FertilizerService {

    List<Fertilizer> getAllFertilizer();
    Optional<Fertilizer> getFertilizerByName(String fertilizerName);
    Optional<Fertilizer> getFertilizerById(Long fertilizerId);
    Response createFertilizer(Fertilizer fertilizer);
    Response updateFertilizer(Fertilizer fertilizer);
}
