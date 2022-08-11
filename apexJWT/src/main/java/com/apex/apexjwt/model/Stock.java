package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "stock")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Stock {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "stock_id", nullable = false)
    private Long id;

    @Column(name = "stock_item")
    private String stockItem;

    @Column(name = "stock_quantity")
    private Long stockQuantity;

    @Column(name = "stock_uom", length = 45)
    private String stockUom;

    @Column(name = "stock_threshold")
    private Long stockThreshold;
}