package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.*;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.*;

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
    private final CropListService cropListService;
    private final CropVarietyDetailService cropVarietyDetailService;
    private final CropGradeListService cropGradeListService;
    private final FarmInputCategoryService farmInputCategoryService;
    private final SeasonListService seasonListService;
    private final SupplierListService supplierListService;
    private final WarehouseListService warehouseListService;
    private final ZoneListService zoneListService;

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

    @GetMapping("/getAllActiveCrops")
    public List<CropList> getAllActiveCrops(){
        return cropListService.getAllActiveCrops();
    }

    @GetMapping("/getAllCrops")
    public List<CropList> getAllCrops(){
        return cropListService.getAllCrops();
    }

    @GetMapping("/getCropByCropCode/{cropCode}")
    public CropList getCropByCropCode(@PathVariable("cropCode") String cropCode){
        return cropListService.getCropByCropCode(cropCode);
    }

    @GetMapping("/getCropByCropName/{cropName}")
    public CropList getCropByCropName(@PathVariable("cropName") String cropName){
        return cropListService.getCropByCropName(cropName);
    }

    @PostMapping("/addCrop")
    public Response addCrop(@RequestBody CropList cropList){
        return cropListService.addCropList(cropList);
    }

    @PutMapping("/updateCrop")
    public Response updateCrop(@RequestBody CropList cropList){
        return cropListService.updateCropList(cropList);
    }

    @GetMapping("/getAllCropVariety")
    public List<CropVarietyDetail> getAllCropVariety(){
        return cropVarietyDetailService.getAllCropVariety();
    }

    @PostMapping(value = "/addCropVariety", consumes = "application/json")
    public Response addCropVariety(@RequestBody CropVarietyDetail cropVarietyDetail){
        return cropVarietyDetailService.addCropVariety(cropVarietyDetail);
    }

    @PutMapping("/updateCropVariety")
    public Response updateCropVariety(@RequestBody CropVarietyDetail cropVarietyDetail){
        return cropVarietyDetailService.updateCropVariety(cropVarietyDetail);
    }

    @GetMapping("/getAllCropGrade")
    public List<CropGradeList> getAllCropGrade(){
        return cropGradeListService.getAllCropGrade();
    }

    @PostMapping("/addCropGrade")
    public Response addCropGrade(@RequestBody CropGradeList cropGradeList){
        return cropGradeListService.addCropGradeList(cropGradeList);
    }

    @PutMapping("/updateCropGrade")
    public Response updateCropGrade(@RequestBody CropGradeList cropGradeList){
        return cropGradeListService.updateCropGradeList(cropGradeList);
    }

    @GetMapping("/getAllInputCategory")
    public List<FarmInputCategory> getAllInputCategory(){
        return farmInputCategoryService.getAllInputCategory();
    }

    @PostMapping("/addInputCategory")
    public Response addInputCategory(@RequestBody FarmInputCategory farmInputCategory){
        return farmInputCategoryService.addInputCategory(farmInputCategory);
    }

    @PutMapping("/updateInputCategory")
    public Response updateInputCategory(@RequestBody FarmInputCategory farmInputCategory){
        return farmInputCategoryService.updateInputCategory(farmInputCategory);
    }

    @GetMapping("/getAllSeasonList")
    public List<SeasonList> getAllSeasonList(){
        return seasonListService.getAllSeasonList();
    }

    @PostMapping("/addSeasonList")
    public Response addSeasonList(@RequestBody SeasonList seasonList){
        return seasonListService.addSeasonList(seasonList);
    }

    @PutMapping("/updateSeasonList")
    public Response updateSeasonList(@RequestBody SeasonList seasonList){
        return seasonListService.updateSeasonList(seasonList);
    }

    @GetMapping("/getAllSupplierList")
    public List<SupplierList> getAllSupplierList(){
        return supplierListService.getAllSupplierList();
    }

    @PostMapping("/addSupplierList")
    public Response addSupplierList(@RequestBody SupplierList supplierList){
        return supplierListService.addSupplierList(supplierList);
    }

    @PutMapping("/updateSupplierList")
    public Response updateSupplierList(@RequestBody SupplierList supplierList){
        return  supplierListService.updateSupplierList(supplierList);
    }

    @GetMapping("/getAllWarehouseList")
    public List<WarehouseList> getAllWarehouseList(){
        return warehouseListService.getAllWarehouseList();
    }

    @GetMapping("/getAllActiveWarehouseList")
    public List<WarehouseList> getAllActiveWarehouseList(){
        return warehouseListService.getAllActiveWarehouseList();
    }

    @PostMapping("/addWarehouseList")
    public Response addWarehouseList(@RequestBody WarehouseList warehouseList){
        return warehouseListService.addWarehouseList(warehouseList);
    }

    @PutMapping("/updateWarehouseList")
    public Response updateWarehouseList(@RequestBody WarehouseList warehouseList){
        return warehouseListService.updateWarehouseList(warehouseList);
    }

    @GetMapping("/getAllZoneList")
    public List<ZoneList> getAllZoneList(){
        return zoneListService.getAllZoneList();
    }

    @PostMapping("/addZoneList")
    public Response addZoneList(@RequestBody ZoneList zoneList){
        return zoneListService.addZoneList(zoneList);
    }

    @PutMapping("/updateZoneList")
    public Response updateZoneList(@RequestBody ZoneList zoneList){
        return zoneListService.updateZoneList(zoneList);
    }
}
