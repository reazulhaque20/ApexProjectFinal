package com.apex.apexjwt.model;

import com.apex.apexjwt.model.Location;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "land_details")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class LandDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "land_id", nullable = false)
    private Long id;

    @Column(name = "land_name")
    private String landName;

    @Column(name = "land_type")
    private String landType;

    @Column(name = "land_size", length = 45)
    private String landSize;

    @Column(name = "land_current_status", length = 45)
    private String landCurrentStatus;

    @Column(name = "land_desc")
    private String landDesc;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "land_location_id")
    private Location landLocation;
}