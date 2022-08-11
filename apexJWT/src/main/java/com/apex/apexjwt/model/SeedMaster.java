package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "seed_master")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class SeedMaster {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "seed_master_id", nullable = false)
    private Long id;

    @Column(name = "sm_seed_name")
    private String smSeedName;

    @Column(name = "sm_seed_category")
    private String smSeedCategory;

    @Column(name = "sm_seed_type")
    private String smSeedType;

    @Column(name = "sm_seed_stock")
    private Long smSeedStock;
}