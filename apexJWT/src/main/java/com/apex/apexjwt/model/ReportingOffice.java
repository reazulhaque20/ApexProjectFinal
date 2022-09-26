package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.apex.apexjwt.model.ZoneList;

import javax.persistence.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
@Table(name = "reporting_office")
public class ReportingOffice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "office_name", length = 45)
    private String officeName;

    @Column(name = "status", length = 10)
    private String status;

    private String address;
    private Long zone;

}