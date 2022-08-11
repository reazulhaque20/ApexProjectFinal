package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "wflines")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Wfline {
    @Id
    @Column(name = "wfline_id", nullable = false)
    private Long id;

    @Column(name = "wfline_name")
    private String wflineName;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "wfheader_id")
    private Wfheader wfheader;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "wfline_next_group")
    private Group wflineNextGroup;

    @Column(name = "wfline_serial")
    private Long wflineSerial;

    @Column(name = "wfline_status", length = 10)
    private String wflineStatus;
}