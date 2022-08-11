package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Location;

import java.util.List;
import java.util.Optional;

public interface LocationService {

    String createLocation(Location location);

    String updateLocation(Location location);

    List<Location> getAllLocation();

    Optional<Location> getLocationByName(String locationName);

    Optional<Location> getLocationById(Long locationId);
}
