package com.apex.apexjwt.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SeasonDetailRequest {
    private Long id;
    private String landName;
    private String seasonName;
    private String cropName;
    private String cropVarietyName;
}
