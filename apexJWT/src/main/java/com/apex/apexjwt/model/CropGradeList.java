package com.apex.apexjwt.model;

import com.apex.apexjwt.model.CropList;
import com.apex.apexjwt.model.CropVarietyDetail;
import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Data
@Table(name = "crop_grade_list")
public class CropGradeList {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "crop_id")
    private CropList crop;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "variety_id")
    private CropVarietyDetail variety;

    @Column(name = "grade_code", length = 45)
    private String gradeCode;

    @Column(name = "grade_name", length = 45)
    private String gradeName;

    @Column(name = "price", precision = 19, scale = 2)
    private BigDecimal price;

    @Column(name = "status", length = 10)
    private String status;

}