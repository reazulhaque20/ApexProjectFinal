package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.CropGradeList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CropGradeListRepo extends JpaRepository<CropGradeList, Long> {
}
