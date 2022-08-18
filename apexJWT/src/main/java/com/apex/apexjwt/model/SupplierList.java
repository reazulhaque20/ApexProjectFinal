package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "supplier_list")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SupplierList {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "code", length = 45)
    private String code;

    @Column(name = "short_name", length = 45)
    private String shortName;

    @Column(name = "full_name", length = 45)
    private String fullName;

    @Column(name = "address", length = 200)
    private String address;

    @Column(name = "phone", length = 45)
    private String phone;

    @Column(name = "email", length = 45)
    private String email;

    @Column(name = "contact_person", length = 45)
    private String contactPerson;

    @Column(name = "status", length = 10)
    private String status;
}