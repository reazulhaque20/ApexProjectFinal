package com.apex.apexjwt.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserUpdateRequest {

    private String userId;
    private String department;
    private String email;
    private String extNo;
    private String mobile;
    private String reportingTo;
    private String role;
}
