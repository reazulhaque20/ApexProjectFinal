package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Labour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LabourRepo extends JpaRepository<Labour, Long> {

    @Query("SELECT u FROM Labour u WHERE u.labourType=:labourType")
    List<Labour> getLabourByLabourType(@Param("labourType") String labourType);

    @Query("SELECT u FROM Labour u WHERE u.labourPaymentType=:labourPaymentType")
    List<Labour> getLaburByLabourPaymentType(@Param("labourPaymentType") String labourPaymentType);
}
