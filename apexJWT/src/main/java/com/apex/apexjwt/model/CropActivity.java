package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.Instant;

@Entity
@Table(name = "crop_activity")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class CropActivity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "crop_activity_id", nullable = false)
    private Long id;

    @Column(name = "activity_date")
    private Instant activityDate;

    @Column(name = "activity_type", length = 45)
    private String activityType;

    @Column(name = "crop_name", length = 45)
    private String cropName;

    @Column(name = "sowing_date")
    private Instant sowingDate;

    @Column(name = "yielding_date")
    private Instant yieldingDate;

    @Column(name = "harvesting_date")
    private Instant harvestingDate;

    @Column(name = "crop_purchase_date")
    private Instant cropPurchaseDate;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "apo_user_id")
    private User apoUser;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "seed_id")
    private SeedMaster seed;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "contruct_details_id")
    private ContructDetail contructDetails;
}