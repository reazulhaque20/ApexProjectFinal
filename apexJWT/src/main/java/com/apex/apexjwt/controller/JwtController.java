package com.apex.apexjwt.controller;

import com.apex.apexjwt.request.JwtRequest;
import com.apex.apexjwt.response.JwtResponse;
import com.apex.apexjwt.model.User;
import com.apex.apexjwt.request.UserRequest;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.response.UserInfoResponse;
import com.apex.apexjwt.service.JwtService;
import com.apex.apexjwt.service.UserInfoService;
import com.apex.apexjwt.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@RestController
@CrossOrigin
@RequestMapping("/api/auth")
@RequiredArgsConstructor
@Log4j2
public class JwtController {

    private final JwtService jwtService;
    private final UserService userService;
    private final UserInfoService userInfoService;

    private final BCryptPasswordEncoder bcryptEncoder;


    @PostMapping("/authenticate")
    public JwtResponse createJwtToken(@RequestBody JwtRequest jwtRequest) throws Exception{
        JwtResponse jwtResponse = new JwtResponse();
        log.info("Date: " + new Date() + " JWTRequest: "+jwtRequest);
        if(jwtRequest == null){
            jwtResponse.setMessage("User Name and Password Could Not be Empty.");
            return jwtResponse;
        }else{

            User user = jwtService.findUserByUserName(jwtRequest.getUserName());
            if(user == null){
                jwtResponse.setMessage("User Name Not Found.");
                log.error("Login: " + new Date() + "User Name Not Found.");
                return jwtResponse;
            }else {
                if(!user.isEnable()){
                    jwtResponse.setMessage("User Not Enabled.");
                    log.error("Login: " + new Date() + "User Not Enabled.");
                    return jwtResponse;
                }
                if(!bcryptEncoder.matches(jwtRequest.getPassword(), user.getPassword())){
                    jwtResponse.setMessage("Password Not Matched.");
                    log.error("Login: " + new Date() + "Password Not Matched.");
                    return jwtResponse;
                }
            }
        }

        return jwtService.createJwtToken(jwtRequest);
    }

    @PostMapping("/registerNewUser")
    public Response registerNewUser(@RequestBody UserRequest userRequest){
        log.info("Date: " + new Date() + " Register User Request: " + userRequest);
        Response response = new Response();
        User user = userService.findUserByUserId(userRequest.getUserId());
        if(user != null){
            response.setMessage("EXIST");
            return response;
        }
        if(userRequest != null || userRequest.getUserId() != null){
            response.setMessage("ERROR");
            return response;
        }
        user.setUserId(userRequest.getUserId());
        user.setUserName(userRequest.getUserId());
        user.setEmpName(userRequest.getUserName());
        user.setDesignation(userRequest.getDesignation());
        user.setDepartment(userRequest.getDepartment());
        user.setReportingTo(userRequest.getReportingTo());
        user.setExtNo(userRequest.getExtNo());
        user.setPassword(userRequest.getPassword());
        user.setEnable(false);

        User userCreated = userService.registerNewUser(user, "User");
        if(userCreated.getId() != null){
            response.setMessage("SUCCESS");
        }else {
            response.setMessage("ERROR");
        }

        return response;
    }



    @PostMapping("/getUserInfo/{userId}")
    public UserInfoResponse getUserInfo(@PathVariable("userId") String userId){
        log.info("Date: " + new Date() + " User Info: " + userId);
        UserInfoResponse userInfoResponse = new UserInfoResponse();
        userInfoResponse.setUserInfo(userInfoService.findByUserId(userId));
        User user = userService.findUserByUserId(userId);

        if(user != null){
            userInfoResponse.setMessage("EXIST");
            return userInfoResponse;
        }

        if(userInfoResponse.getUserInfo() == null){
            userInfoResponse.setMessage("ERROR");
            return userInfoResponse;
        }

        userInfoResponse.setMessage("SUCCESS");

        return userInfoResponse;

    }
}
