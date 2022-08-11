package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "manufacturer")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Manufacturer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "manufacturer_id", nullable = false)
    private Long id;

    @Column(name = "manufacturer_name")
    private String manufacturerName;

    @Column(name = "manufacturer_desc")
    private String manufacturerDesc;

    @Column(name = "status", length = 45)
    private String status;
}