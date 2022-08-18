package com.apex.apexjwt.service;

import com.apex.apexjwt.model.SupplierList;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface SupplierListService {

    List<SupplierList> getAllSupplierList();
    Response addSupplierList(SupplierList supplierList);
    Response updateSupplierList(SupplierList supplierList);
}
