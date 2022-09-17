package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Dropdown;
import com.apex.apexjwt.repository.DropdownRepo;
import com.apex.apexjwt.response.AnyType;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DropdownServiceImpl implements DropdownService{

    private final DropdownRepo dropdownRepo;


    @Override
    public AnyType getAllDropDownList() {
        AnyType anyType = new AnyType();
        anyType.setValue1(1L);
        anyType.setValue2(10L);
        anyType.setTotalRows(dropdownRepo.findAll().stream().count());
        anyType.setNowShowing(1L);
        anyType.setAnytypeObject(dropdownRepo.findAll());
        return anyType;
    }

    @Override
    public List<Dropdown> getDropdownListByName(String dropDownName) {
        return dropdownRepo.getDropdownListByName(dropDownName);
    }

    @Override
    public Response addDropDown(Dropdown dropdown) {
        dropdownRepo.save(dropdown);
        Response response = new Response("DropDown Data Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateDropDown(Dropdown dropdown) {
        dropdownRepo.save(dropdown);
        Response response = new Response("DropDown Data Successfully Updated", "success", 0L);
        return response;
    }
}
