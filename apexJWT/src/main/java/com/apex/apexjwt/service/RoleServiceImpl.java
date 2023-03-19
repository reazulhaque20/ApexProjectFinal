package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Role;
import com.apex.apexjwt.repository.RoleRepo;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService {

    private RoleRepo roleRepo;
    public RoleServiceImpl(RoleRepo roleRepo){
        this.roleRepo = roleRepo;
    }


    @Override
    public Role getRoleByRoleName(String roleName) {
        return roleRepo.getRoleByRoleName(roleName);
    }
}
