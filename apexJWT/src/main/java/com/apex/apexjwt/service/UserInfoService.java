package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Role;
import com.apex.apexjwt.model.UsersInfo;

import java.util.List;

public interface UserInfoService {

    String addUser(UsersInfo usersInfo);
    UsersInfo getUserByUserName(String userName);
    List<UsersInfo> getAllUsers();

    Role getRoleByRoleName(String roleName);

//    EmployeeDetails getEmployeeDetailsById(String employeeId);
}
