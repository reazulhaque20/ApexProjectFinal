package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> getAllProduct();
    List<Product> getProductByCategoryId(Long id);
    Product getProductByName(String productName);
}
