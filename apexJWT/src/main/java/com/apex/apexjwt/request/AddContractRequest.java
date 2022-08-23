package com.apex.apexjwt.request;

import com.apex.apexjwt.model.ContractSeason;
import com.apex.apexjwt.model.ContractDetail;
import com.apex.apexjwt.model.ContractInputDetail;
import com.apex.apexjwt.model.ContractPaymentDetail;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AddContractRequest {
    private ContractDetail contractDetail;
    private List<ContractSeason> contractSeasonList;
    private List<ContractInputDetail> contractInputDetailList;
    private ContractPaymentDetail contractPaymentDetail;
}
