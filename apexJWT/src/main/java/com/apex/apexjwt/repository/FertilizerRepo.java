package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Fertilizer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface FertilizerRepo extends JpaRepository<Fertilizer, Long> {

    @Query("SELECT u FROM Fertilizer u WHERE u.fertilizerName=:fertilizerName")
    Optional<Fertilizer> getFertilizerByName(@Param("fertilizerName") String fertilizerName);

    @Query("SELECT u FROM Fertilizer u WHERE u.id=:fertilizerId")
    Fertilizer getFertilizerById(@Param("fertilizerId") Long fertilizerId);
}
