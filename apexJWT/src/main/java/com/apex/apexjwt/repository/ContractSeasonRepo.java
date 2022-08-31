package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.ContractSeason;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ContractSeasonRepo extends JpaRepository<ContractSeason, Long> {

    @Query("SELECT u FROM ContractSeason u WHERE u.contract.id=:id")
    List<ContractSeason> getContractSeasonByContractId(@Param("id") Long id);
}
