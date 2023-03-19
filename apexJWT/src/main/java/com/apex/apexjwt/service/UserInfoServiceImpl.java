package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Role;
import com.apex.apexjwt.model.UsersInfo;
import com.apex.apexjwt.repository.RoleRepo;
import com.apex.apexjwt.repository.UsersInfoRepo;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class UserInfoServiceImpl implements UserInfoService {

    private UsersInfoRepo usersInfoRepo;
    private RoleRepo roleRepo;

    private static final Logger LOGGER = LogManager.getLogger("UserInfoServiceImpl");

    public UserInfoServiceImpl(UsersInfoRepo usersInfoRepo,RoleRepo roleRepo){
        this.usersInfoRepo = usersInfoRepo;
        this.roleRepo = roleRepo;
    }

    @Override
    public String addUser(UsersInfo usersInfo) {
        LOGGER.info("From Add User.......");
        Role role = new Role();
        role = roleRepo.getRoleByRoleName("User");
        Set<Role> roleSet = new HashSet<>();
        roleSet.add(role);
        usersInfo.setRoles(roleSet);
        try {
            usersInfoRepo.save(usersInfo);
            return "SUCCESS";
        }catch (Exception exception){
            LOGGER.error("Error While Adding User");
        }
        return "ERROR";
    }

    @Override
    public UsersInfo getUserByUserName(String userName) {
        return null;
    }

    @Override
    public List<UsersInfo> getAllUsers() {
        return usersInfoRepo.getAllUsers();
    }

    @Override
    public Role getRoleByRoleName(String roleName) {
        Role role = new Role();
        role = roleRepo.getRoleByRoleName(roleName);
        return role;
    }

//    @Override
//    public EmployeeDetails getEmployeeDetailsById(String employeeId) {
//        return usersInfoRepo.getEmployeeDetailById(employeeId);
//    }


}
