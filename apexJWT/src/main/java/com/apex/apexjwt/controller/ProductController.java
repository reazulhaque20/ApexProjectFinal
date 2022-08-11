package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.Product;
import com.apex.apexjwt.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/product")
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @GetMapping("/getAllProducts")
    public List<Product> getAllProducts(){
        return productService.getAllProduct();
    }
}
