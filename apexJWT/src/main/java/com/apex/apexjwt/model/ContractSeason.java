package com.apex.apexjwt.model;

import com.apex.apexjwt.model.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "contract_season")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ContractSeason {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "contract_id")
    private ContractDetail contract;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "land_id")
    private LandDetail land;

    @Column(name = "land_area", length = 45)
    private String landArea;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "season_id")
    private SeasonList season;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "crop_id")
    private CropList crop;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "crop_variety_id")
    private CropVarietyDetail cropVariety;

    @Column(name = "status", length = 10)
    private String status;
}