package com.apex.apexjwt.model;

import com.apex.apexjwt.model.FarmerDetail;
import com.apex.apexjwt.model.ReportingFieldOfficer;
import com.apex.apexjwt.model.ReportingOffice;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "contract_details")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ContractDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "farmer_id")
    private FarmerDetail farmer;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "officer_id")
    private ReportingFieldOfficer officer;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "office_id")
    private ReportingOffice office;

    @Column(name = "status", length = 10)
    private String status;
}