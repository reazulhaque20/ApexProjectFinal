package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.WarehouseList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WarehouseListRepo extends JpaRepository<WarehouseList, Long> {

    @Query("SELECT u FROM WarehouseList u WHERE u.status='active'")
    List<WarehouseList> getAllActiveWarehouseList();
}
