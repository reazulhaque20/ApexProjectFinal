package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "certifications")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Certification {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "certifications_id", nullable = false)
    private Long id;

    @Column(name = "certification_vendor", length = 45)
    private String certificationVendor;

    @Column(name = "certification_certificate_id", length = 45)
    private String certificationCertificateId;

    @Column(name = "certification_validity", length = 45)
    private String certificationValidity;

    @Column(name = "certification_date")
    private LocalDate certificationDate;
}