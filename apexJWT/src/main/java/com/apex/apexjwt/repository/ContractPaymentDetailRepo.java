package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.ContractPaymentDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ContractPaymentDetailRepo extends JpaRepository<ContractPaymentDetail, Long> {

    @Query("SELECT u FROM ContractPaymentDetail u WHERE u.contract.id=:id")
    ContractPaymentDetail getContractPaymentDetailByContractId(@Param("id") Long id);
}
