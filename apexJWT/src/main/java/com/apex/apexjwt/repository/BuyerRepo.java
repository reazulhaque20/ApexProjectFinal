package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Buyer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BuyerRepo extends JpaRepository<Buyer, Long> {

    @Query("SELECT u FROM Buyer u WHERE u.status='active'")
    List<Buyer> getAllActiveBuyer();

    @Query("SELECT u FROM Buyer u WHERE u.buyerCode=:buyerCode")
    Buyer getBuyerByBuyerCode(@Param("buyerCode") String buyerCode);

    @Query("SELECT u FROM Buyer u WHERE u.buyerName=:buyerName")
    Buyer getBuyerByBuyerName(@Param("buyerName") String buyerName);
}
