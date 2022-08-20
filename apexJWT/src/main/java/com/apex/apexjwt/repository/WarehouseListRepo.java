package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.WarehouseList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WarehouseListRepo extends JpaRepository<WarehouseList, Long> {
}
