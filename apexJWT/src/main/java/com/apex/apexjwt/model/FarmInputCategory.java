package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "farm_input_category")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class FarmInputCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "input_cat_code", length = 45)
    private String inputCatCode;

    @Column(name = "input_cat_name", length = 45)
    private String inputCatName;

    @Column(name = "status", length = 10)
    private String status;
}