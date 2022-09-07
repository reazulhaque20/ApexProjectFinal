package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class ContructCashDetail {
    @Id
    @Column(name = "contruct_cash_details_id", nullable = false)
    private Long id;

    @Column(name = "contruct_cash_details_cash_recv", precision = 19, scale = 4)
    private BigDecimal contructCashDetailsCashRecv;

    @Column(name = "contruct_cash_details_cash_deposited", precision = 19, scale = 4)
    private BigDecimal contructCashDetailsCashDeposited;
}