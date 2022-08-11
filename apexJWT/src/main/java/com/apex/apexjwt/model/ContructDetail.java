package com.apex.apexjwt.model;

import com.apex.apexjwt.model.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "contruct_details")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class ContructDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "contruct_id", nullable = false)
    private Long id;

    @Column(name = "contruct_type", length = 45)
    private String contructType;

    @Column(name = "farmer_id")
    private Long farmerId;

    @Column(name = "contruct_source_id")
    private Long contructSourceId;

    @Column(name = "contruct_start_date")
    private LocalDate contructStartDate;

    @Column(name = "contruct_end_date")
    private LocalDate contructEndDate;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "contruct_startby")
    private User contructStartby;
}