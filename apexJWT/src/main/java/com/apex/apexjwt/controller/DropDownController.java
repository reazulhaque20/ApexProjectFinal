package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.Dropdown;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.DropdownService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/dropdown")
@RequiredArgsConstructor
public class DropDownController {

    private final DropdownService dropdownService;

    @GetMapping("/getAllDropDownList")
    public List<Dropdown> getAllDropDownList(){
        return dropdownService.getAllDropDownList();
    }

    @GetMapping("/getDropdownListByName/{dropDownName}")
    public List<Dropdown> getDropdownListByName(@PathVariable("dropDownName") String dropDownName){
        return dropdownService.getDropdownListByName(dropDownName);
    }

    @PostMapping("/addDropDown")
    public Response addDropDown(@RequestBody Dropdown dropdown){
        return dropdownService.addDropDown(dropdown);
    }

    @PutMapping("/updateDropDown")
    public Response updateDropDown(@RequestBody Dropdown dropdown){
        return dropdownService.updateDropDown(dropdown);
    }
}
