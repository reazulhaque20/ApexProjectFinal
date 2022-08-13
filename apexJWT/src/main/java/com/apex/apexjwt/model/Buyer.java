package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "buyer")
public class Buyer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "buyer_code", length = 45)
    private String buyerCode;

    @Column(name = "buyer_name", length = 45)
    private String buyerName;

    @Column(name = "short_name", length = 45)
    private String shortName;

    @Column(name = "phone", length = 45)
    private String phone;

    @Column(name = "email", length = 45)
    private String email;

    @Column(name = "contact_person", length = 45)
    private String contactPerson;

    @Column(name = "address", length = 255)
    private String address;

    @Column(name = "status", length = 10)
    private String status;



}