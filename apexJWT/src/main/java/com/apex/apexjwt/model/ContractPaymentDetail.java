package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "contract_payment_details")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ContractPaymentDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "contract_id")
    private ContractDetail contract;

    @Column(name = "total_amount", precision = 19, scale = 2)
    private BigDecimal totalAmount;

    @Column(name = "payment_amount", precision = 19, scale = 2)
    private BigDecimal paymentAmount;

    @Column(name = "loan_amount", precision = 19, scale = 2)
    private BigDecimal loanAmount;

    @Column(name = "total_due_amount", precision = 19, scale = 2)
    private BigDecimal totalDueAmount;

    @Column(name = "status", length = 10)
    private String status;
}