package com.apex.apexjwt.request;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class DataTableRequest {
    private Long draw;
    private Long start;
    private Long length;
    private String search;
}
