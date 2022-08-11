package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Division;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DivisionRepo extends JpaRepository<Division, Long> {

    @Query("SELECT u FROM Division u WHERE u.status='active'")
    List<Division> getAllActiveDivision();

    @Query("SELECT u FROM Division u")
    List<Division> getAllDivision();
}
