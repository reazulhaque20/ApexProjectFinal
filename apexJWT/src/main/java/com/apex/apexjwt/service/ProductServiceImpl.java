package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Product;
import com.apex.apexjwt.repository.ProductRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

    private final ProductRepo productRepo;

    @Override
    public List<Product> getAllProduct(){
        return productRepo.findAll();
    }

    @Override
    public List<Product> getProductByCategoryId(Long id) {
        return productRepo.getProductByCategoryID(id);
    }

    @Override
    public Product getProductByName(String productName) {
        return productRepo.getProductByName(productName);
    }
}
