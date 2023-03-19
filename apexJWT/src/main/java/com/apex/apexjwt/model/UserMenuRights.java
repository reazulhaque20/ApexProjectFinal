package com.apex.apexjwt.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "USER_MENU_RIGHTS")
@Data
public class UserMenuRights {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "USER_MENU_RIGHTS_SEQ")
    @SequenceGenerator(sequenceName = "user_menu_rights_seq", allocationSize = 1, name = "USER_MENU_RIGHTS_SEQ")
    private Integer id;
    @JoinColumn(name = "userInfoId")
    @ManyToOne(cascade = CascadeType.ALL, optional = false)
    private UsersInfo usersInfo;
    private Integer menuSerial;
    private Integer appId;
}
