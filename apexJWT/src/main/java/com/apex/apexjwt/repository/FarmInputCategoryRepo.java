package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.FarmInputCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FarmInputCategoryRepo extends JpaRepository<FarmInputCategory, Long> {
}
