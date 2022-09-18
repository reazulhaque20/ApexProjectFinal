package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.Dropdown;
import com.apex.apexjwt.request.DataTableRequest;
import com.apex.apexjwt.response.AnyType;
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
    public AnyType getAllDropDownList(@RequestParam Long draw, @RequestParam Long start, @RequestParam Long length, @RequestParam String search){

        DataTableRequest dataTableRequest = new DataTableRequest(draw, start, length, search);

        return dropdownService.getAllDropDownList(dataTableRequest);
    }

    @GetMapping("/testAdd")
    public String testAdd(){
        Dropdown dropdown = new Dropdown();
        for (int i =10000 ; i< 100000; i++){
            dropdown = new Dropdown(Long.parseLong(""+i), "name"+i, "type"+i, "value"+i, "active");
            dropdownService.addDropDown(dropdown);
            dropdown = new Dropdown();
        }
        return "Done";
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
