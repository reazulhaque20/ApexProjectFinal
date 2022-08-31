package com.apex.apexjwt.request;

import com.apex.apexjwt.model.*;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class CreateContractRequest {
    private final FarmerDetail farmer;
    private final ReportingOffice office;
    private final ReportingFieldOfficer officer;
    private final WarehouseList warehouse;
    private final List<SeasonList> seasonDetail;
    private final List<ContractInputDetail> inputDetail;
    private final ContractPaymentDetail paymentDetail;
}
