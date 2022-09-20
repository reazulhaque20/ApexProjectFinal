package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Dropdown;
import com.apex.apexjwt.repository.DropdownRepo;
import com.apex.apexjwt.request.DataTableRequest;
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
    public AnyType getAllDropDownList(DataTableRequest dataTableRequest) {
        AnyType anyType = new AnyType();
        if (dataTableRequest.getSearch().equalsIgnoreCase("null")) dataTableRequest.setSearch("");
        List<Dropdown> dropDownList = dropdownRepo.getDropdownList(dataTableRequest.getStart(), dataTableRequest.getLength(), "%" + dataTableRequest.getSearch() + "%");
        anyType.setDraw(dataTableRequest.getDraw());
        Long total = 0L;
        if(dataTableRequest.getSearch().isEmpty() || dataTableRequest.getSearch().equalsIgnoreCase("null")) {
            total = dropdownRepo.count();
        }else{
            total = dropDownList.stream().count();
        }
        anyType.setRecordsTotal(total);
        anyType.setRecordsFiltered(total);
        anyType.setData(dropDownList);
        return anyType;
    }

    @Override
    public List<Dropdown> getAllDropDownListDt(){
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
