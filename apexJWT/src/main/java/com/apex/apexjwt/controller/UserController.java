package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.ReportingUser;
import com.apex.apexjwt.model.User;
import com.apex.apexjwt.request.AddUserRequest;
import com.apex.apexjwt.request.ChangePasswordRequest;
import com.apex.apexjwt.request.UserUpdateRequest;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.response.UserListResponse;
import com.apex.apexjwt.service.ReportingUserService;
import com.apex.apexjwt.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

@RequiredArgsConstructor
@RestController
@Log4j2
@RequestMapping("/api/user")
public class UserController {

    private final UserService userService;
    private final PasswordEncoder passwordEncoder;
    private final ReportingUserService reportingUserService;

    @GetMapping("/logout")
    public Response logOut(){
        Response response = new Response();
        SecurityContextHolder.clearContext();

        response.setMessage("Logout");
        return response;
    }

    @GetMapping("/forAdmin")
    @PreAuthorize("hasRole('Admin')")
    public String forAdmin(){
        return "This only for admin";
    }

    @GetMapping("/forUser")
    @PreAuthorize("hasAnyRole('User')")
    public String forUser(){
        return "Only for User";
    }

    @GetMapping("/getAllUser")
    @PreAuthorize("hasRole('Admin')")
    public List<User> getAllUser(){
        List<User> userList = userService.findUserList();
//        UserListResponse userListResponse = new UserListResponse();
//        List<UserListResponse> userListResponseList = new ArrayList<>();
//        ListIterator<User> userListIterator = userList.listIterator();
//        Integer sl = 1;
//        while (userListIterator.hasNext()){
//            userListResponse.setSl(sl);
//            userListResponse.setUser(userListIterator.next());
//            userListResponseList.add(userListResponse);
//            userListResponse = new UserListResponse();
//            sl += 1;
//        }

        return userList;
    }

    @PutMapping("/updateUser")
    @PreAuthorize("hasRole('Admin')")
    public Response updateUser(@RequestBody User user){
        return userService.updateUser(user);
    }

    @GetMapping("/getReportingUser/{deptName}")
    @PreAuthorize("hasRole('Admin')")
    public List<User> getReportingUser(@PathVariable("deptName") String deptName){
        return userService.getReportingUser(deptName);
    }

    @PostMapping("/addUser")
    @PreAuthorize("hasRole('Admin')")
    public Response addUser(@RequestBody AddUserRequest addUserRequest){
        Response response = new Response();
        User user = userService.findUserByUserId(addUserRequest.getUserId());
        if(user != null){
            response.setMessage("EXIST");
            return response;
        }
        user = new User();
        user.setUserId(addUserRequest.getUserId());
        user.setUserName(addUserRequest.getUserId());
        user.setEmpName(addUserRequest.getUserName());
        user.setFirstName(addUserRequest.getFirstName());
        user.setDesignation(addUserRequest.getDesignation());
        user.setDepartment(addUserRequest.getDepartment());
        user.setReportingTo(addUserRequest.getReportingTo());
        user.setMobile(addUserRequest.getMobile());
        user.setExtNo(addUserRequest.getExtNo());
        user.setEmail(addUserRequest.getEmail());

        response = userService.addUser(user, addUserRequest.getRoleName());

        return response;
    }

    @PostMapping("/addBulkUser")
    @PreAuthorize("hasRole('Admin')")
    public Response addBulkUser(){
        Response response = new Response();
        User user = new User();
        for(int i=1; i<=1000; i++){
            user.setUserName("101586");
            user.setEmpName("Md Reazul Haque");
            user.setFirstName("admin" + i+150);
            user.setUserId("admin" + i+150);
            user.setDesignation("Software Engineer");
            user.setDepartment("System");
            user.setReportingTo("SIR");
            user.setMobile("01787694391");
            user.setExtNo("123");
            user.setEmail("software@apexholdings.com");
            user.setEnable(true);
            user.setPassword("admin");
            userService.registerNewUser(user, "Admin");
            user = new User();
        }
        response.setMessage("100 User Done");
        return response;
    }


    @PostMapping("/changePassword")
    public Response changePassword(@RequestBody ChangePasswordRequest changePasswordRequest){
        Response response = new Response();

        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String userName = userDetails.getUsername();
        String password = userDetails.getPassword();
        String currentPassword = changePasswordRequest.getCurrentPassword();
        boolean isPasswordMatched = passwordEncoder.matches(currentPassword, password);
        if(!isPasswordMatched){
            response.setMessage("Current Password Doesn't Match.");
            response.setMessageType("ERROR");
            return response;
        }

        User user = userService.findUserByUserId(userName);

        if(user == null){
            response.setMessage("Failed To Retrieve User Info.");
            response.setMessageType("ERROR");
            return  response;
        }

        user.setPassword(passwordEncoder.encode(changePasswordRequest.getNewPassword()));

        userService.updateUser(user);

        response.setMessage("Password Has Been Updated.");
        response.setMessageType("SUCCESS");
        return response;
    }

    @GetMapping("/getReportingUsers/{department}")
    @PreAuthorize("hasAnyRole('User','Admin')")
    public List<ReportingUser> getReportingUsers(@PathVariable("department") String department){
        try{
            List<ReportingUser> reportingUserList = reportingUserService.findAllReportingUserByDepartment(department);
            if(reportingUserList.isEmpty()){
                log.error("Reporting user is empty.");
                return null;
            }else {
                return reportingUserList;
            }
        }catch(Exception exception){
            log.error("Error while getting reporting user list.");
            return null;
        }

    }

    @PutMapping("/updateUserData")
    public Response updateUserData(@RequestBody UserUpdateRequest userUpdateRequest){
        Response response = new Response();

        User user = userService.findUserByUserId(userUpdateRequest.getUserId());

        if(user != null){
            user.setDepartment(userUpdateRequest.getDepartment());
            user.setEmail(userUpdateRequest.getEmail());
            user.setExtNo(userUpdateRequest.getExtNo());
            user.setMobile(userUpdateRequest.getMobile());
            user.setReportingTo(userUpdateRequest.getReportingTo());
        }
        userService.addUser(user, userUpdateRequest.getRole());
        response.setMessage("User Data Updated Successfully.");
        response.setMessageType("SUCCESS");

        return response;
    }

    @DeleteMapping("/deleteUser/{userId}")
    public Response deleteUser(@PathVariable("userId") String userId){
        Response  response = new Response();
        try{
            response = userService.deleteUser(userId);
        }catch(Exception exception){
            exception.printStackTrace();
            response.setMessageType("ERROR");
            response.setMessage("Error While Deleting User.");
        }


        return response;
    }
}
