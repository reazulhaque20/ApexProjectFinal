package com.apex.apexjwt.model;

import com.apex.apexjwt.model.FarmerDetail;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "farmer_financial_details")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class FarmerFinancialDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "farmer_financial_details_id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "farmer_id")
    private FarmerDetail farmer;

    @Column(name = "bank_name", length = 45)
    private String bankName;

    @Column(name = "branch_name", length = 45)
    private String branchName;

    @Column(name = "account_no", length = 45)
    private String accountNo;

    @Column(name = "mobile_banking_type", length = 45)
    private String mobileBankingType;

    @Column(name = "mobile_banking_account", length = 45)
    private String mobileBankingAccount;

    @Column(name = "authorized_person_name", length = 45)
    private String authorizedPersonName;

    @Column(name = "authorized_bank_name", length = 45)
    private String authorizedBankName;

    @Column(name = "authorized_bank_account_no", length = 45)
    private String authorizedBankAccountNo;

    @Column(name = "status", length = 10)
    private String status;
}