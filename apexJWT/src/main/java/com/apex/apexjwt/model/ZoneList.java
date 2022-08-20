package com.apex.apexjwt.model;

import com.apex.apexjwt.model.District;
import com.apex.apexjwt.model.Division;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "zone_list")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ZoneList {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "zone_code", length = 45)
    private String zoneCode;

    @Column(name = "zone_name", length = 45)
    private String zoneName;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "dividion_id")
    private Division dividion;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "district_id")
    private District district;

    @Column(name = "status", length = 10)
    private String status;
}