package com.apex.apexjwt.service;

import com.apex.apexjwt.repository.RoleRepo;
import com.apex.apexjwt.repository.UserRepo;
import com.apex.apexjwt.model.Role;
import com.apex.apexjwt.model.User;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@RequiredArgsConstructor
@Service
public class UserServiceImpl implements UserService {

    private final UserRepo userRepo;
    private final RoleRepo roleRepo;
    private final PasswordEncoder passwordEncoder;

    @Override
    public User registerNewUser(User user, String roleReq) {
        Role role = roleRepo.findRoleByRoleName(roleReq);
        Set<Role> roles = new HashSet<>();
        roles.add(role);
        user.setRoles(roles);
        user.setPassword(getEncodedPassword(user.getPassword()));
        return userRepo.save(user);
    }

    @Override
    public String changepassword(User user) {
        userRepo.save(user);
        return "SUCCESS";
    }


    @Override
    public List<User> findUserList() {
        return userRepo.findUserList();
    }

    @Override
    public String getEncodedPassword(String password) {
        return passwordEncoder.encode(password);
    }

    @Override
    public Response updateUser(User user) {
        Response response = new Response();
        User userToUpdate = userRepo.findUserByUsername(user.getUserName());
        userToUpdate.setFirstName(user.getFirstName());
        userToUpdate.setLastName(user.getLastName());
        userToUpdate.setDesignation(user.getDesignation());
        userToUpdate.setDepartment(user.getDepartment());
        userToUpdate.setWorkLocation(user.getWorkLocation());
        userToUpdate.setCompany(user.getCompany());
        userToUpdate.setEmail(user.getEmail());
        userToUpdate.setMobile(user.getMobile());
        userToUpdate.setJoiningDate(user.getJoiningDate());

        userRepo.save(userToUpdate);

        response.setMessage("User Update Successful.");

        return response;
    }

    @Override
    public List<User> getReportingUser(String deptName) {
        return userRepo.getReportingUser(deptName);
    }

    @Override
    public User findUserByUserId(String userId) {
        return userRepo.findUserByUserId(userId);
    }

    @Override
    public Response addUser(User user, String roleName) {
        Response response = new Response();
        Set<Role> roles = new HashSet<>();
        Role role = roleRepo.findRoleByRoleName(roleName);
        roles.add(role);
        user.setRoles(roles);
        userRepo.save(user);
        response.setMessage("SUCCESS");
        return response;
    }

    @Override
    public Response updateUserData(User user, String roleName) {
        Response response = new Response();

        Set<Role> roles = new HashSet<>();
        Role role = roleRepo.findRoleByRoleName(roleName);
        roles.add(role);

        return response;
    }

    @Override
    public Response deleteUser(String userId) {
        Response response = new Response();

        User user = userRepo.findUserByUserId(userId);
        user.setEnable(false);
        if(user != null){
            userRepo.save(user);
            response.setMessage("User Has Been Deleted.");
            response.setMessageType("SUCCESS");
        }else{
            response.setMessage("Error While Deleting User.");
            response.setMessageType("ERROR");
        }

        return response;
    }


}
