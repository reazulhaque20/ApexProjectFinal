package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.*;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.*;

import java.security.PublicKey;
import java.util.List;

@RestController
@RequestMapping("api/masterData")
@RequiredArgsConstructor
@Log4j2
public class MasterDataController {
    private final DivisionService divisionService;
    private final DistrictService districtService;
    private final UpazilaService upazilaService;
    private final UnionService unionService;
    private final BuyerService buyerService;

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

    @GetMapping("/getAllBuyer")
    public List<Buyer> getAllBuyer(){
        return buyerService.getAllBuyer();
    }

    @GetMapping("/getAllActiveBuyer")
    public List<Buyer> getAllActiveBuyer(){
        return buyerService.getAllActiveBuyer();
    }

    @GetMapping("/getBuyerByBuyerCode/buyerCode")
    public Buyer getBuyerByBuyerCode(@PathVariable("buyerCode") String buyerCode){
        return buyerService.getBuyerByBuyerCode(buyerCode);
    }

    @GetMapping("/getBuyerByBuyerName/buyerName")
    public Buyer getBuyerByBuyerName(@PathVariable("buyerName") String buyerName){
        return buyerService.getBuyerByBuyerName(buyerName);
    }

    @PostMapping("/addBuyer")
    public Response addBuyer(@RequestBody Buyer buyer){
        Response response;
        response = buyerService.addBuyer(buyer);
        return response;
    }

    @PutMapping("/updateBuyer")
    public Response updateBuyer(@RequestBody Buyer buyer){
        Response response;
        response = buyerService.updateBuyer(buyer);
        return response;
    }

    @PutMapping("/deleteBuyer")
    public Response deleteBuyer(@RequestBody Buyer buyer){
        Response response;
        response = buyerService.deleteBuyer(buyer);
        return response;
    }
}
