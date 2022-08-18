package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.SupplierList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SupplierListRepo extends JpaRepository<SupplierList, Long> {
}
