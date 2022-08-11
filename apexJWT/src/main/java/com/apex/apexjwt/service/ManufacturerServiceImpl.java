package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Manufacturer;
import com.apex.apexjwt.repository.ManufacturerRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ManufacturerServiceImpl implements ManufacturerService {

    private final ManufacturerRepo manufacturerRepo;

    public List<Manufacturer> getAllManufacturer(){
        return manufacturerRepo.findAll();
    }
}
