package com.apex.apexjwt.response;

import com.apex.apexjwt.model.UsersInfo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserInfoResponse {

    private UsersInfo userInfo;
    private String message;
}
