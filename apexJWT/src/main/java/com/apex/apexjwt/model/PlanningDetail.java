package com.apex.apexjwt.model;

import com.apex.apexjwt.model.*;
import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.Instant;

@Entity
@Table(name = "planning_detail")
@Data
public class PlanningDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "planning_code", length = 45)
    private String planningCode;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "land_id")
    private LandDetail land;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "contract_id")
    private ContractDetail contract;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "office_id")
    private ReportingOffice office;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "officer_id")
    private ReportingFieldOfficer officer;

    @ManyToOne(fetch = FetchType.EAGER)
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
}