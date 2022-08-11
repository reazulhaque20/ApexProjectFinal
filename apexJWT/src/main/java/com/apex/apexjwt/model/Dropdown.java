package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Dropdown {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long dropdownId;

    private String dropdownName;
    private String dropdownText;
    private String dropdownValue;
    private String status;
}
