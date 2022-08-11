package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "product")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id", nullable = false)
    private Long id;

    @Column(name = "product_name")
    private String productName;

    @Column(name = "product_desc")
    private String productDesc;

    @Column(name = "product_type")
    private String productType;

    @Column(name = "product_uom")
    private String productUom;

    @Column(name = "product_qty")
    private Long productQty;

    @Column(name = "product_stock_status")
    private String productStockStatus;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "product_manufacturer_id")
    private Manufacturer productManufacturer;

    @Column(name = "product_price", precision = 19, scale = 4)
    private BigDecimal productPrice;

    @Column(name = "product_reorder_level", length = 45)
    private String productReorderLevel;

    @Column(name = "status")
    private String status;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "product_category")
    private Category productCategory;
}