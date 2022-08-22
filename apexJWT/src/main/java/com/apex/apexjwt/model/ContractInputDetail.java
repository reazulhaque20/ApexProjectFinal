package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "contract_input_details")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ContractInputDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "contract_id")
    private ContractDetail contract;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "input_category_id")
    private FarmInputCategory inputCategory;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id")
    private Product product;

    @Column(name = "stock_qty", precision = 19, scale = 2)
    private BigDecimal stockQty;

    @Column(name = "unit", length = 45)
    private String unit;

    @Column(name = "price", precision = 19, scale = 2)
    private BigDecimal price;

    @Column(name = "distribution_qty", precision = 19, scale = 2)
    private BigDecimal distributionQty;

    @Column(name = "sub_total", precision = 19, scale = 2)
    private BigDecimal subTotal;

    @Column(name = "status", length = 10)
    private String status;
}