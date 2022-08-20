package com.apex.apexjwt.service;

import com.apex.apexjwt.model.WarehouseList;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface WarehouseListService {

    List<WarehouseList> getAllWarehouseList();
    Response addWarehouseList(WarehouseList warehouseList);
    Response updateWarehouseList(WarehouseList warehouseList);
}
