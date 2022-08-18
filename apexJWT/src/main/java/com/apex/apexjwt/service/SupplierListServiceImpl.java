package com.apex.apexjwt.service;

import com.apex.apexjwt.model.SupplierList;
import com.apex.apexjwt.repository.SupplierListRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SupplierListServiceImpl implements SupplierListService {

    private final SupplierListRepo supplierListRepo;

    @Override
    public List<SupplierList> getAllSupplierList() {
        return supplierListRepo.findAll();
    }

    @Override
    public Response addSupplierList(SupplierList supplierList) {
        supplierListRepo.save(supplierList);
        Response response = new Response("Supplier Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateSupplierList(SupplierList supplierList) {
        supplierListRepo.save(supplierList);
        Response response = new Response("Supplier Successfully Updated.", "success", 0L);
        return response;
    }
}
