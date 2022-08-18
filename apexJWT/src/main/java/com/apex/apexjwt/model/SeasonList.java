package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "season_list")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SeasonList {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "season_code", length = 45)
    private String seasonCode;

    @Column(name = "season_name", length = 45)
    private String seasonName;

    @Column(name = "season_start")
    private LocalDate seasonStart;

    @Column(name = "season_end")
    private LocalDate seasonEnd;

    @Column(name = "status", length = 10)
    private String status;
}