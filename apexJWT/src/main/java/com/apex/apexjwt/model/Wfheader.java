package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "wfheader")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Wfheader {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "wfheader_id", nullable = false)
    private Long id;

    @Column(name = "wfheader_name")
    private String wfheaderName;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "wfheader_group")
    private Group wfheaderGroup;

    @Column(name = "wfheader_status", length = 10)
    private String wfheaderStatus;
}