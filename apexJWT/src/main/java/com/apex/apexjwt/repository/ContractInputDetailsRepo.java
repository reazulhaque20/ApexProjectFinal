package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.ContractInputDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ContractInputDetailsRepo extends JpaRepository<ContractInputDetail, Long> {

    @Query("SELECT u FROM ContractInputDetail u WHERE u.contract.id=:id")
    List<ContractInputDetail> getContractInputDetailByContractId(@Param("id") Long id);
}
