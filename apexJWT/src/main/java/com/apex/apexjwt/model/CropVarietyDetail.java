package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "crop_variety_detail")
public class CropVarietyDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "crop_id")
    private CropList crop;

    @Column(name = "variety_code", length = 45)
    private String varietyCode;

    @Column(name = "variety_name", length = 45)
    private String varietyName;

    @Column(name = "crop_cycle", length = 45)
    private String cropCycle;

    @Column(name = "expected_yield", length = 45)
    private String expectedYield;

    @Column(name = "initial_harvest", length = 45)
    private String initialHarvest;

    @Column(name = "status", length = 10)
    private String status;

}