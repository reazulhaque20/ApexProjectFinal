package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "warehouse_list")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class WarehouseList {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "warehouse_code", length = 45)
    private String warehouseCode;

    @Column(name = "warehouse_name", length = 45)
    private String warehouseName;

    @Column(name = "address", length = 200)
    private String address;

    @Column(name = "location", length = 45)
    private String location;

    @Column(name = "incharge_name", length = 45)
    private String inchargeName;

    @Column(name = "capacity", length = 45)
    private String capacity;

    @Column(name = "status", length = 10)
    private String status;
}