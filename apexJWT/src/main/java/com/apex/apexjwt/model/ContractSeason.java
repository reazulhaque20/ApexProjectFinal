package com.apex.apexjwt.model;

import com.apex.apexjwt.model.CropList;
import com.apex.apexjwt.model.CropVarietyDetail;
import com.apex.apexjwt.model.LandDetail;
import com.apex.apexjwt.model.SeasonList;
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

    @Column(name = "contract_id")
    private Long contractId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "land_id")
    private LandDetail land;

    @Column(name = "land_area", length = 45)
    private String landArea;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "season_id")
    private SeasonList season;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "crop_id")
    private CropList crop;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "crop_variety_id")
    private CropVarietyDetail cropVariety;

    @Column(name = "status", length = 10)
    private String status;
}