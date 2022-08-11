package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.Labour;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.LabourService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/labour")
@RequiredArgsConstructor
public class LabourController {

    private final LabourService labourService;

    @GetMapping("/getAll")
    public List<Labour> getAll(){
        return labourService.getAll();
    }

    @PostMapping("/createLabour")
    public Response createLabour(@RequestBody Labour labour){
        Response response = new Response();

        response = labourService.createLabour(labour);
        return response;
    }

    @PutMapping("/updateLabour")
    public Response updateLabour(@RequestBody Labour labour){
        Response response = new Response();
        response = labourService.updateLabour(labour);

        return response;
    }

    @GetMapping("/getLabourById/{labourId}")
    public Optional<Labour> getLabourById(@PathVariable("labourId") Long labourId){
        Optional<Labour> labour = labourService.getLabourById(labourId);

        return labour;
    }
}
