package com.apex.apexjwt.model;

import com.apex.apexjwt.model.Location;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "farmer_details")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class FarmerDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "farmer_id", nullable = false)
    private Long id;

    @Column(name = "farmer_name", nullable = false)
    private String farmerName;

    @Column(name = "gender", nullable = false, length = 45)
    private String gender;

    @Column(name = "farmer_type", length = 45)
    private String farmerType;

    @Column(name = "joining_date")
    private LocalDate joiningDate;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "farmer_location")
    private Location farmerLocation;

    @Column(name = "father_name", length = 45)
    private String fatherName;

    @Column(name = "nid", length = 45)
    private String nid;

    @Column(name = "mobile", length = 45)
    private String mobile;

    @Column(name = "dob")
    private LocalDate dob;

    @Column(name = "marital_status", length = 45)
    private String maritalStatus;

    @Column(name = "blood_group", length = 10)
    private String bloodGroup;

    @Column(name = "village_name", length = 45)
    private String villageName;

    @Column(name = "union_name", length = 45)
    private String unionName;

    @Column(name = "nominee_name", length = 45)
    private String nomineeName;

    @Column(name = "nominee_contact", length = 45)
    private String nomineeContact;

    @Column(name = "relation_with_nominee", length = 45)
    private String relationWithNominee;

    @Column(name = "remarks")
    private String remarks;

    @Column(name = "office_name", length = 45)
    private String officeName;

    @Column(name = "field_officer", length = 45)
    private String fieldOfficer;

    @Column(name = "zone_details", length = 45)
    private String zoneDetails;

    @Column(name = "profile_image_path", length = 255)
    private String profileImagePath;

    @Column(name = "status", length = 10)
    private String status;

    @Column(name = "disease", length = 50)
    private String disease;
}