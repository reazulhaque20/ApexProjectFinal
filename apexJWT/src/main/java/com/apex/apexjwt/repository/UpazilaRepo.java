package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Upazila;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UpazilaRepo extends JpaRepository<Upazila, Long> {

    @Query("SELECT u FROM Upazila u WHERE u.status='active'")
    List<Upazila> getAllActiveUpazila();

    @Query("SELECT u FROM Upazila u")
    List<Upazila> getAllUpazila();

    @Query("SELECT u FROM Upazila u WHERE u.div.id=:divId AND u.dis.id=:disId AND u.status='active'")
    List<Upazila> getUpazilaByDivIdAndDisId(@Param("divId") Long divId, @Param("disId") Long disId);
}
