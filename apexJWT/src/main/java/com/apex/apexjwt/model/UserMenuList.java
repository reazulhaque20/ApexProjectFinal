package com.apex.apexjwt.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "USER_MENU_LIST")
@Data
public class UserMenuList {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "USER_MENU_LIST_SEQ")
    @SequenceGenerator(sequenceName = "user_menu_list_seq", allocationSize = 1, name = "USER_MENU_LIST_SEQ")
    private Integer Id;
    private Integer menuSerial;
    private Integer MenuSerialParent;
    private Integer AppId;
    private String moduleName;
    private String menuName;
    private String menuTitle;
    private String pageName;
    private String tablesName;
    private String menuIcon;
    private String remarks;
    private String activeStatus;
    private Integer slNo;
    private Integer subSeq;
    private String updatedBy;
    private Date updatedDt;
}
