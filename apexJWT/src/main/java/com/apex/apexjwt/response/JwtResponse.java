package com.apex.apexjwt.response;

import com.apex.apexjwt.model.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class JwtResponse {
    private User user;
    private String jwtToken;
    private String message;
}
