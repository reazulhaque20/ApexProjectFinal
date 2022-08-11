package com.apex.apexjwt.response;

import com.apex.apexjwt.model.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserListResponse {

    private Integer sl;
    private User user;
}
