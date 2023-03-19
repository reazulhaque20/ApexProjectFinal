package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Table(name = "USERS_INFO")
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
public class UsersInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "USERSINFO_SEQ")
    @SequenceGenerator(sequenceName = "usersinfo_seq", allocationSize = 1, name = "USERSINFO_SEQ")
    private Integer id;

    @Column(name = "USER_NAME")
    private String userName;

    @Column(name = "USER_ID")
    private String userId;

    @Column(name = "EMPLOYEE_NAME")
    private String employeeName;

    @Column(name = "PASSWORD")
    private String password;

    @Column(name = "TELEPHONE_NO")
    private String telephoneNo;

    @Column(name = "TELEPHONE_EXT")
    private String telephoneExt;

    @Column(name = "MOBILE_NO")
    private String mobileNo;

    @Column(name = "EMAIL_ID")
    private String emailId;

    @Column(name = "COMPANY")
    private String company;

    @Column(name = "DEPARTMENT")
    private String department;

    @Column(name = "DESIGNATION")
    private String designation;

    @Column(name = "LOCATION")
    private String location;

    @Column(name = "REPORT_TO")
    private Integer reporTo;

    @Column(name = "MASTER_ID")
    private Integer masterId;

    @Column(name = "USER_PHOTO")
    private String userPhoto;

    @Column(name = "USER_TYPE")
    private String userType;

    @Column(name = "IP")
    private String ip;

    @Column(name = "STATUS")
    private String status;

    @Column(name = "CREATED_BY")
    private String createdBy;

    @Column(name = "CREATED_DT")
    private Date createdDt;

    @Column(name = "UPDATED_BY")
    private String updatedBy;

    @Column(name = "UPDATED_DT")
    private Date updatedDt;

    @Column(name = "LAYOUT")
    private String layout;

    @Column(name = "EMAIL_NOTIFY")
    private String emailNotify;

    @ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinTable(
            name = "user_role",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private Set<Role> roles;
}
