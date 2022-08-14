package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@AllArgsConstructor
@RequiredArgsConstructor
@Table(name = "crop_list")
public class CropList {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "crop_code", length = 45)
    private String cropCode;

    @Column(name = "crop_name", length = 45)
    private String cropName;

    @Column(name = "unit")
    private Long unit;

    @Column(name = "status", length = 10)
    private String status;

}