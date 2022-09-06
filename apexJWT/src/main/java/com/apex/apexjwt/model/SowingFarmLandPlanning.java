package com.apex.apexjwt.model;

import com.apex.apexjwt.model.FarmDetail;
import com.apex.apexjwt.model.FarmerDetail;
import com.apex.apexjwt.model.SeasonList;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Table(name = "sowing_farm_land_planning")
public class SowingFarmLandPlanning {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "farmer_id")
    private FarmerDetail farmer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "farm_id")
    private FarmDetail farm;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "season_id")
    private SeasonList season;

    @Column(name = "sowing_date")
    private LocalDate sowingDate;

    @Column(name = "seed_source", length = 45)
    private String seedSource;

    @Column(name = "seed_qty", precision = 19, scale = 2)
    private BigDecimal seedQty;

    @Column(name = "est_yield", length = 45)
    private String estYield;

    @Column(name = "est_purchase", length = 45)
    private String estPurchase;

    @Column(name = "est_harvest_date")
    private LocalDate estHarvestDate;

    @Column(name = "rr_spacing", length = 45)
    private String rrSpacing;

    @Column(name = "tt_spacing", length = 45)
    private String ttSpacing;

    @Column(name = "status", length = 10)
    private String status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public FarmerDetail getFarmer() {
        return farmer;
    }

    public void setFarmer(FarmerDetail farmer) {
        this.farmer = farmer;
    }

    public FarmDetail getFarm() {
        return farm;
    }

    public void setFarm(FarmDetail farm) {
        this.farm = farm;
    }

    public SeasonList getSeason() {
        return season;
    }

    public void setSeason(SeasonList season) {
        this.season = season;
    }

    public LocalDate getSowingDate() {
        return sowingDate;
    }

    public void setSowingDate(LocalDate sowingDate) {
        this.sowingDate = sowingDate;
    }

    public String getSeedSource() {
        return seedSource;
    }

    public void setSeedSource(String seedSource) {
        this.seedSource = seedSource;
    }

    public BigDecimal getSeedQty() {
        return seedQty;
    }

    public void setSeedQty(BigDecimal seedQty) {
        this.seedQty = seedQty;
    }

    public String getEstYield() {
        return estYield;
    }

    public void setEstYield(String estYield) {
        this.estYield = estYield;
    }

    public String getEstPurchase() {
        return estPurchase;
    }

    public void setEstPurchase(String estPurchase) {
        this.estPurchase = estPurchase;
    }

    public LocalDate getEstHarvestDate() {
        return estHarvestDate;
    }

    public void setEstHarvestDate(LocalDate estHarvestDate) {
        this.estHarvestDate = estHarvestDate;
    }

    public String getRrSpacing() {
        return rrSpacing;
    }

    public void setRrSpacing(String rrSpacing) {
        this.rrSpacing = rrSpacing;
    }

    public String getTtSpacing() {
        return ttSpacing;
    }

    public void setTtSpacing(String ttSpacing) {
        this.ttSpacing = ttSpacing;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}