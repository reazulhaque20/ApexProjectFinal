package com.apex.apexjwt.service;

import com.apex.apexjwt.repository.RoleRepo;
import com.apex.apexjwt.model.Role;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class RoleServiceImpl implements RoleService{

    private final RoleRepo roleRepo;


    @Override
    public Role createNewRole(Role role) {
        return roleRepo.save(role);
    }

    @Override
    public Role findRoleByRoleName(String roleName) {
        return roleRepo.findRoleByRoleName(roleName);
    }

    @Override
    public List<Role> findAllRoles() {
        try{
            List<Role> roles = roleRepo.findAllRoles();
            return roles;
        }catch(Exception exception){
            exception.printStackTrace();
            return null;
        }
    }


}
