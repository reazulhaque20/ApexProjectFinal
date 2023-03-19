package com.apex.apexjwt.response;

import com.apex.apexjwt.model.UsersInfo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserListResponse {

    private Integer sl;
    private UsersInfo user;
}
