package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "fertilizer")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Fertilizer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fertilizer_id", nullable = false)
    private Long id;

    @Column(name = "fertilizer_name")
    private String fertilizerName;

    @Column(name = "fertilizer_grade", length = 45)
    private String fertilizerGrade;

    @Column(name = "fertilizer_status", length = 45)
    private String fertilizerStatus;

    @Column(name = "fertilizer_uom", length = 45)
    private String fertilizerUom;

    @Column(name = "fertilizer_cost", precision = 19, scale = 4)
    private BigDecimal fertilizerCost;
}