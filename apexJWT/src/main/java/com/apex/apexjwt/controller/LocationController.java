package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.Location;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.LocationService;
import com.apex.apexjwt.util.Utility;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/location/")
public class LocationController {

    private final LocationService locationService;
    private final Utility utility;

    @GetMapping("/getAllLocations")
    @PreAuthorize("hasRole('Admin')")
    public List<Location> getAllLocations(){
        return locationService.getAllLocation();
    }

    @GetMapping("/getLocationByName/{locationName}")
    public Optional<Location> getLocationByName(@PathVariable("locationName") String locationName){
        Optional<Location> location = locationService.getLocationByName(locationName);
        return location;
    }

    @GetMapping("/getLocationById/{locationId}")
    public Optional<Location> getLocationById(@PathVariable("locationId") Long locationId){
        Optional<Location> location = locationService.getLocationById(locationId);
        return location;
    }

    @PostMapping("/addLocation")
    @PreAuthorize("hasRole('Admin')")
    public Response addLocation(@RequestBody Location location){
        return utility.compareStringUsingMap(locationService.createLocation(location), "SUCCESS") ? setResponse("Location Added Successfully", "success") : setResponse("Error While Creating Location", "error");
    }

    @PostMapping("/updateLocation")
    @PreAuthorize("hasRole('Admin')")
    public Response updateLocation(@RequestBody Location location){
        return utility.compareStringUsingMap(locationService.updateLocation(location), "SUCCESS") ? setResponse("Location Updated Successfully", "success") : setResponse("Error While Updating Location", "error");
    }

    private Response setResponse(String message, String messageType){
        Response response = new Response();
        response.setMessage(message);
        response.setMessageType(messageType);
        return response;
    }
}
