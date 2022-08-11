package com.apex.apexjwt.service;

import com.apex.apexjwt.repository.LocationRepo;
import com.apex.apexjwt.model.Location;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Service
public class LocationServiceImpl implements LocationService{

    private final LocationRepo locationRepo;

    @Override
    public String createLocation(Location location) {
        locationRepo.save(location);
        return "SUCCESS";
    }

    @Override
    public String updateLocation(Location location) {
        Location existingLocation = locationRepo.findLocationById(location.getLocationId());

        existingLocation.setLocationName(location.getLocationName());
        existingLocation.setLocationCode(location.getLocationCode());
        existingLocation.setStatus(location.getStatus());
        locationRepo.save(existingLocation);
        return "SUCCESS";
    }

    @Override
    public List<Location> getAllLocation() {
        return locationRepo.findAll();
    }

    @Override
    public Optional<Location> getLocationByName(String locationName) {
        return locationRepo.findLocationByName(locationName);
    }

    @Override
    public Optional<Location> getLocationById(Long locationId) {
        return locationRepo.findById(locationId);
    }


}
