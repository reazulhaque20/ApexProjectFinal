package com.apex.apexjwt.model;

import com.apex.apexjwt.model.*;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.Instant;

@Entity
@Table(name = "planning_detail")
public class PlanningDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "planning_code", length = 45)
    private String planningCode;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "land_id")
    private LandDetail land;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "contract_id")
    private ContractDetail contract;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "office_id")
    private ReportingOffice office;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "officer_id")
    private ReportingFieldOfficer officer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "farmer_id")
    private FarmerDetail farmer;

    @Column(name = "sowing_date")
    private Instant sowingDate;

    @Column(name = "harvest_date")
    private Instant harvestDate;

    @Column(name = "yield_decimal", length = 45)
    private String yieldDecimal;

    @Column(name = "purchase_qty", precision = 19, scale = 2)
    private BigDecimal purchaseQty;

    @Column(name = "status", length = 45)
    private String status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LandDetail getLand() {
        return land;
    }

    public void setLand(LandDetail land) {
        this.land = land;
    }

    public ContractDetail getContract() {
        return contract;
    }

    public void setContract(ContractDetail contract) {
        this.contract = contract;
    }

    public ReportingOffice getOffice() {
        return office;
    }

    public void setOffice(ReportingOffice office) {
        this.office = office;
    }

    public ReportingFieldOfficer getOfficer() {
        return officer;
    }

    public void setOfficer(ReportingFieldOfficer officer) {
        this.officer = officer;
    }

    public FarmerDetail getFarmer() {
        return farmer;
    }

    public void setFarmer(FarmerDetail farmer) {
        this.farmer = farmer;
    }

    public Instant getSowingDate() {
        return sowingDate;
    }

    public void setSowingDate(Instant sowingDate) {
        this.sowingDate = sowingDate;
    }

    public Instant getHarvestDate() {
        return harvestDate;
    }

    public void setHarvestDate(Instant harvestDate) {
        this.harvestDate = harvestDate;
    }

    public String getYieldDecimal() {
        return yieldDecimal;
    }

    public void setYieldDecimal(String yieldDecimal) {
        this.yieldDecimal = yieldDecimal;
    }

    public BigDecimal getPurchaseQty() {
        return purchaseQty;
    }

    public void setPurchaseQty(BigDecimal purchaseQty) {
        this.purchaseQty = purchaseQty;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}