package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Labour;
import com.apex.apexjwt.response.Response;

import java.util.List;
import java.util.Optional;

public interface LabourService {

    List<Labour> getAll();
    Response createLabour(Labour labour);
    Response updateLabour(Labour labour);
    Optional<Labour> getLabourById(Long labourId);
    Optional<Labour> getLabourByName(String labourName);
    List<Labour> getLabourListByLabourType(String labourType);
    List<Labour> getLabourByLabourPaymentType(String labourPaymentType);
}
