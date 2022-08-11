package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.Instant;

@Entity
@Table(name = "labour")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Labour {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "labour_id", nullable = false)
    private Long id;

    @Column(name = "labour_type", length = 45)
    private String labourType;

    @Column(name = "labour_intime")
    private Instant labourIntime;

    @Column(name = "labour_outtime")
    private Instant labourOuttime;

    @Column(name = "labour_payment_type", length = 45)
    private String labourPaymentType;

}