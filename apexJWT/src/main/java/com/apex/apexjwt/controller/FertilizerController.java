package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.Fertilizer;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.FertilizerService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/fertilizer")
@RequiredArgsConstructor
public class FertilizerController {

    private final FertilizerService fertilizerService;

    @GetMapping("/getAllFertilizer")
    public List<Fertilizer> getAllFertilizer(){
        return fertilizerService.getAllFertilizer();
    }

    @GetMapping("/getFertilizerByName/{fertilizerName}")
    public Optional<Fertilizer> getFertilizerByName(@PathVariable("fertilizerName") String fertilizerName){
        return fertilizerService.getFertilizerByName(fertilizerName);
    }

    @GetMapping("/getfertilizerById/{fertilizerId}")
    public Optional<Fertilizer> getFertilizerById(@PathVariable("fertilizerId") Long fertilizerId){
        return fertilizerService.getFertilizerById(fertilizerId);
    }

    @PostMapping("/createFertilizer")
    public Response createFertilizer(@RequestBody Fertilizer fertilizer){
        return fertilizerService.createFertilizer(fertilizer);
    }

    @PutMapping("/updateFertilizer")
    public Response updateFertilizer(@RequestBody Fertilizer fertilizer){
        return fertilizerService.updateFertilizer(fertilizer);
    }

}
