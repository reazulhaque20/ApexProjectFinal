package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.FarmDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FarmDetailRepo extends JpaRepository<FarmDetail, Long> {
}
