package com.apex.apexjwt.service;

import com.apex.apexjwt.model.WarehouseList;
import com.apex.apexjwt.repository.WarehouseListRepo;
import com.apex.apexjwt.response.Response;
import io.swagger.v3.oas.annotations.servers.Server;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class WarehouseListServiceImpl implements WarehouseListService {

    private final WarehouseListRepo warehouseListRepo;

    @Override
    public List<WarehouseList> getAllWarehouseList() {
        return warehouseListRepo.findAll();
    }

    @Override
    public Response addWarehouseList(WarehouseList warehouseList) {
        warehouseListRepo.save(warehouseList);
        Response response = new Response("Warehouse Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateWarehouseList(WarehouseList warehouseList) {
        warehouseListRepo.save(warehouseList);
        Response response = new Response("Warehouse Successfully Added.", "success", 0L);
        return response;
    }
}
