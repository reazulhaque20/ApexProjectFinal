package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.District;
import com.apex.apexjwt.model.Division;
import com.apex.apexjwt.model.Union;
import com.apex.apexjwt.model.Upazila;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.DistrictService;
import com.apex.apexjwt.service.DivisionService;
import com.apex.apexjwt.service.UnionService;
import com.apex.apexjwt.service.UpazilaService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.security.PublicKey;
import java.util.List;

@RestController
@RequestMapping("api/masterData")
@RequiredArgsConstructor
public class MasterDataController {
    private final DivisionService divisionService;
    private final DistrictService districtService;
    private final UpazilaService upazilaService;
    private final UnionService unionService;

    @GetMapping("/getAllDivision")
    public List<Division> getAllDivision(){
        return divisionService.getAllDivision();
    }

    @PostMapping("/addDivision")
    public Response addDivision(@RequestBody Division division){
        return divisionService.addDivision(division);
    }

    @PutMapping("/updateDivision")
    public Response updateDivision(@RequestBody Division division){
        return divisionService.updateDivision(division);
    }

    @GetMapping("/getAllDistrict")
    public List<District> getAllDistrict(){
        return districtService.getAllDistrict();
    }

    @GetMapping("/getDistrictByDivision/{divisionId}")
    public List<District> getDistrictByDivision(@PathVariable("divisionId") Long divisionId){
        return districtService.getDistrictByDivision(divisionId);
    }

    @PostMapping("/addDistrict")
    public Response addDistrict(@RequestBody District district){
        return districtService.addDistrict(district);
    }

    @PutMapping("/updateDistrict")
    public Response updateDistrict(@RequestBody District district){
        return districtService.updateDistrict(district);
    }

    @GetMapping("/getUpazilaByDivIdAndDisId/{divId}/{disId}")
    public List<Upazila> getUpazilaByDivIdAndDisId(@PathVariable("divId") Long divId, @PathVariable("disId") Long disId){
        return upazilaService.getUpazilaByDivIdAndDisId(divId, disId);
    }

    @GetMapping("/getAllUpazila")
    public List<Upazila> getAllUpazila(){
        return upazilaService.getAllUpazila();
    }

    @PostMapping("/addUpazila")
    public Response addUpazila(@RequestBody Upazila upazila){
        return upazilaService.addUpazila(upazila);
    }

    @PutMapping("/updateUpazila")
    public Response updateUpazila(@RequestBody Upazila upazila){
        return upazilaService.updateUpazila(upazila);
    }

    @GetMapping("/getAllUnion")
    public List<Union> getAllUnion(){
        return unionService.getAllUnion();
    }

    @GetMapping("/loadAllUnion")
    public List<Union> loadAllUnion(){
        return unionService.getAllActiveUnion();
    }
    @PostMapping("/addUnion")
    public Response addUnion(@RequestBody Union union){
        return unionService.addUnion(union);
    }

    @PutMapping("/updateUnion")
    public Response updateUnion(@RequestBody Union union){
        return unionService.updateUnion(union);
    }
}
