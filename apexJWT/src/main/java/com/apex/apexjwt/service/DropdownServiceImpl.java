package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Dropdown;
import com.apex.apexjwt.repository.DropdownRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DropdownServiceImpl implements DropdownService{

    private final DropdownRepo dropdownRepo;


    @Override
    public List<Dropdown> getAllDropDownList() {
        return dropdownRepo.findAll();
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
