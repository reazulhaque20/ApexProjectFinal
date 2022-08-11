package com.apex.apexjwt.request;

import com.apex.apexjwt.model.FarmerDetail;
import com.apex.apexjwt.model.FarmerFamilyDetail;
import com.apex.apexjwt.model.FarmerFinancialDetail;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FarmerAddRequest {

    private FarmerDetail farmerDetail;
    private List<FarmerFamilyDetail> farmerFamilyDetailList;
    private FarmerFinancialDetail farmerFinancialDetail;
}
