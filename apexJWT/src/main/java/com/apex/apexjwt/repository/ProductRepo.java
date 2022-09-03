package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepo extends JpaRepository<Product, Long> {

    @Query("SELECT u FROM Product u WHERE u.productCategory.id=:id")
    List<Product> getProductByCategoryID(@Param("id") Long id);

    @Query("SELECT u FROM Product u WHERE u.productName=:productName")
    Product getProductByName(@Param("productName") String productName);
}
