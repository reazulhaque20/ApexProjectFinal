package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.SeedMaster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SeedMasterRepo extends JpaRepository<SeedMaster, Long> {
}
