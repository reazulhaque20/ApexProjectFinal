package com.apex.apexjwt.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

@Entity
@Table(name = "farm_land_detail")
public class FarmLandDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "farmer_id")
    @JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
    private FarmerDetail farmer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "reporting_office_id")
    @JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
    private ReportingOffice reportingOffice;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "reporting_field_officer_id")
    @JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
    private ReportingFieldOfficer reportingFieldOfficer;

    @Column(name = "reg_no", length = 45)
    private String regNo;

    @Column(name = "farm_land_type", length = 45)
    private String farmLandType;

    @Column(name = "cultivation_type", length = 45)
    private String cultivationType;

    @Column(name = "ownership", length = 45)
    private String ownership;

    @Column(name = "topography", length = 45)
    private String topography;

    @Column(name = "land_area", length = 45)
    private String landArea;

    @Column(name = "lat", length = 45)
    private String lat;

    @Column(name = "lon", length = 45)
    private String lon;

    @Column(name = "remarks", length = 45)
    private String remarks;

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

    public ReportingOffice getReportingOffice() {
        return reportingOffice;
    }

    public void setReportingOffice(ReportingOffice reportingOffice) {
        this.reportingOffice = reportingOffice;
    }

    public ReportingFieldOfficer getReportingFieldOfficer() {
        return reportingFieldOfficer;
    }

    public void setReportingFieldOfficer(ReportingFieldOfficer reportingFieldOfficer) {
        this.reportingFieldOfficer = reportingFieldOfficer;
    }

    public String getRegNo() {
        return regNo;
    }

    public void setRegNo(String regNo) {
        this.regNo = regNo;
    }

    public String getFarmLandType() {
        return farmLandType;
    }

    public void setFarmLandType(String farmLandType) {
        this.farmLandType = farmLandType;
    }

    public String getCultivationType() {
        return cultivationType;
    }

    public void setCultivationType(String cultivationType) {
        this.cultivationType = cultivationType;
    }

    public String getOwnership() {
        return ownership;
    }

    public void setOwnership(String ownership) {
        this.ownership = ownership;
    }

    public String getTopography() {
        return topography;
    }

    public void setTopography(String topography) {
        this.topography = topography;
    }

    public String getLandArea() {
        return landArea;
    }

    public void setLandArea(String landArea) {
        this.landArea = landArea;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public String getLon() {
        return lon;
    }

    public void setLon(String lon) {
        this.lon = lon;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

}