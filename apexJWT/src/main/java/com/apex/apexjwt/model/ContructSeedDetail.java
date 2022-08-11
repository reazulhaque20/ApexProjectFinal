package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "contruct_seed_details")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class ContructSeedDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "contruct_seed_details_id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "contruct_id")
    private ContructDetail contruct;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "seed_id")
    private SeedMaster seed;

    @Column(name = "seed_grad", length = 45)
    private String seedGrad;

    @Column(name = "`seed-qty`", precision = 19, scale = 4)
    private BigDecimal seedQty;

    @Column(name = "seed_cost", precision = 19, scale = 4)
    private BigDecimal seedCost;
}