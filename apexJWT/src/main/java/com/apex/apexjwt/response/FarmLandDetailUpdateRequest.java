package com.apex.apexjwt.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FarmLandDetailUpdateRequest {
    private String cultivationType;
    private String farmLandType;
    private String farmerName;
    private Long id;
    private String landArea;
    private String lat;
    private String lon;
    private String ownership;
    private String regNo;
    private String remarks;
    private String reportingFieldOfficerName;
    private String reportingOfficeName;
    private String topography;
    private Long sn;
}
