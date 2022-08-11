package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "farmer_contruct")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class FarmerContruct {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "farmer_contruct_id", nullable = false)
    private Long id;

    @Column(name = "contruct_start_date")
    private LocalDate contructStartDate;

    @Column(name = "contruct_end_date")
    private LocalDate contructEndDate;
}