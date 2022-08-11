package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Union;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UnionRepo extends JpaRepository<Union, Long> {

    @Query("SELECT u FROM Union u WHERE u.status='active'")
    List<Union> getAllActiveUnion();

    @Query("SELECT u FROM Union u")
    List<Union> getAllUnion();
}
