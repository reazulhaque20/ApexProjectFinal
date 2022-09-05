package com.apex.apexjwt.model;

import com.apex.apexjwt.model.FarmDetail;
import com.apex.apexjwt.model.FarmerDetail;
import com.apex.apexjwt.model.SeasonList;
import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Table(name = "farm_land_planning")
@Data
public class FarmLandPlanning {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "farmer_id")
    private FarmerDetail farmer;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "farm_id")
    private FarmDetail farm;

    @ManyToOne(fetch = FetchType.EAGER)
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

}