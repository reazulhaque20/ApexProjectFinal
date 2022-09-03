package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.FarmInputCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface FarmInputCategoryRepo extends JpaRepository<FarmInputCategory, Long> {

    @Query("SELECT u FROM FarmInputCategory u WHERE u.inputCatName=:inputCatName")
    FarmInputCategory getFarmInputCategoryByName(@Param("inputCatName") String inputCatName);
}
