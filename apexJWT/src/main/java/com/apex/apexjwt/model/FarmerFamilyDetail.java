package com.apex.apexjwt.model;

import com.apex.apexjwt.model.FarmerDetail;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "farmer_family_details")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class FarmerFamilyDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "farmer_family_details_id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "farmer_id")
    private FarmerDetail farmer;

    @Column(name = "member_name", length = 45)
    private String memberName;

    @Column(name = "contact_number", length = 45)
    private String contactNumber;

    @Column(name = "member_dob")
    private LocalDate memberDob;

    @Column(name = "relation_with_member", length = 45)
    private String relationWithMember;

    @Column(name = "status", length = 10)
    private String status;
}