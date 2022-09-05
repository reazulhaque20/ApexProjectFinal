package com.apex.apexjwt.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "farm_land_planning_crop")
@Data
public class FarmLandPlanningCrop {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "farm_land_planning_id")
    private FarmLandPlanning farmLandPlanning;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "crop_id")
    private CropList crop;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "crop_variety_id")
    private CropVarietyDetail cropVariety;

    @Column(name = "remarks", length = 100)
    private String remarks;

    @Column(name = "status", length = 10)
    private String status;
}