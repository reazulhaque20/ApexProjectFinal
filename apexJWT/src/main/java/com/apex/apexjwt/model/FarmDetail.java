package com.apex.apexjwt.model;

import com.apex.apexjwt.model.Location;
import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "farm_details")
@Data
public class FarmDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "farm_id", nullable = false)
    private Long id;

    @Column(name = "farm_name", length = 45)
    private String farmName;

    @Column(name = "farm_type", length = 45)
    private String farmType;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "farm_location")
    private Location farmLocation;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFarmName() {
        return farmName;
    }

    public void setFarmName(String farmName) {
        this.farmName = farmName;
    }

    public String getFarmType() {
        return farmType;
    }

    public void setFarmType(String farmType) {
        this.farmType = farmType;
    }

    public Location getFarmLocation() {
        return farmLocation;
    }

    public void setFarmLocation(Location farmLocation) {
        this.farmLocation = farmLocation;
    }

}