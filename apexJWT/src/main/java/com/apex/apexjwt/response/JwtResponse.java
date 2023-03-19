package com.apex.apexjwt.response;

import com.apex.apexjwt.model.UsersInfo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class JwtResponse {
    private UsersInfo user;
    private String jwtToken;
    private String message;
}
