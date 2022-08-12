package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Role;

import java.util.List;

public interface RoleService {

    Role createNewRole(Role role);
    Role findRoleByRoleName(String roleName);
    List<Role> findAllRoles();
}
