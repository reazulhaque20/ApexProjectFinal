package com.apex.apexjwt.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InputDetailRequest {

    private Long id;
    private String inputCategoryName;
    private String productName;
    private BigDecimal distributionQty;
    private BigDecimal subTotal;
}
