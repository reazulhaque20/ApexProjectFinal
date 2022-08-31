package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.ContractDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ContractDetailsRepo extends JpaRepository<ContractDetail, Long> {

    @Query("SELECT u FROM ContractDetail u WHERE u.id=:id")
    ContractDetail getContractDetailById(@Param("id") Long id);
}
