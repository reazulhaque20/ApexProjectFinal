package com.apex.apexjwt.model;

import javax.persistence.*;

@Entity
@Table(name = "sowing_farm_land_planning_crop")
public class SowingFarmLandPlanningCrop {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "farm_land_planning_id")
    private SowingFarmLandPlanning farmLandPlanning;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "crop_id")
    private CropList crop;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "crop_variety_id")
    private CropVarietyDetail cropVariety;

    @Column(name = "remarks", length = 100)
    private String remarks;

    @Column(name = "status", length = 10)
    private String status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public SowingFarmLandPlanning getFarmLandPlanning() {
        return farmLandPlanning;
    }

    public void setFarmLandPlanning(SowingFarmLandPlanning farmLandPlanning) {
        this.farmLandPlanning = farmLandPlanning;
    }

    public CropList getCrop() {
        return crop;
    }

    public void setCrop(CropList crop) {
        this.crop = crop;
    }

    public CropVarietyDetail getCropVariety() {
        return cropVariety;
    }

    public void setCropVariety(CropVarietyDetail cropVariety) {
        this.cropVariety = cropVariety;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}