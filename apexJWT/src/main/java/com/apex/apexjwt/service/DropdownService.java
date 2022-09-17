package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Dropdown;
import com.apex.apexjwt.response.AnyType;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface DropdownService {

    AnyType getAllDropDownList();
    List<Dropdown> getDropdownListByName(String dropDownName);
    Response addDropDown(Dropdown dropdown);
    Response updateDropDown(Dropdown dropdown);
}
