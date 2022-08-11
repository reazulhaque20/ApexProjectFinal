package com.apex.apexjwt.response;

import com.apex.apexjwt.model.FarmerDetail;
import com.apex.apexjwt.model.FarmerFamilyDetail;
import com.apex.apexjwt.model.FarmerFinancialDetail;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FarmerDetailResponse {

    private FarmerDetail farmerDetail;
    private List<FarmerFamilyDetail> farmerFamilyDetailList;
    private FarmerFinancialDetail farmerFinancialDetail;
    private String message;
    private String messageType;
}
