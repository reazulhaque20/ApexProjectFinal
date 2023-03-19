package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.UsersInfo;
import com.apex.apexjwt.request.JwtRequest;
import com.apex.apexjwt.request.UserRequest;
import com.apex.apexjwt.response.JwtResponse;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.response.UserInfoResponse;
import com.apex.apexjwt.service.JwtService;
import com.apex.apexjwt.service.UserInfoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@RestController
@CrossOrigin
@RequestMapping("/api/auth")
@RequiredArgsConstructor
@Log4j2
public class JwtController {

    private final JwtService jwtService;
    private final UserInfoService userInfoService;
    @Autowired
    private final PasswordEncoder passwordEncoder;

    @PostMapping("/authenticate")
    public JwtResponse createJwtToken(@RequestBody JwtRequest jwtRequest) throws Exception{
        JwtResponse jwtResponse = new JwtResponse();
        log.info("Date: " + new Date() + " JWTRequest: "+jwtRequest);
        if(jwtRequest == null){
            jwtResponse.setMessage("User Name and Password Could Not be Empty.");
            return jwtResponse;
        }else{

            UsersInfo user = jwtService.findUserByUserName(jwtRequest.getUserName());
            if(user == null){
                jwtResponse.setMessage("User Name Not Found.");
                log.error("Login: " + new Date() + "User Name Not Found.");
                return jwtResponse;
            }else {
                if(!user.getStatus().equalsIgnoreCase("A")){
                    jwtResponse.setMessage("User Not Enabled.");
                    log.error("Login: " + new Date() + "User Not Enabled.");
                    return jwtResponse;
                }
                if(!passwordEncoder.matches(jwtRequest.getPassword(), user.getPassword())){
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
        UsersInfo user = userInfoService.getUserByUserName(userRequest.getUserId());
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
        user.setEmployeeName(userRequest.getUserName());
        user.setDesignation(userRequest.getDesignation());
        user.setDepartment(userRequest.getDepartment());
//        user.setReportingTo(userRequest.getReportingTo());
//        user.setExtNo(userRequest.getExtNo());
        user.setPassword(userRequest.getPassword());
        user.setStatus("A");

        String msg = userInfoService.addUser(user);
        if(msg.equalsIgnoreCase("SUCCESS")){
            response.setMessage("SUCCESS");
        }else {
            response.setMessage("ERROR");
        }

        return response;
    }



    @PostMapping("/getUserInfo/{userName}")
    public UserInfoResponse getUserInfo(@PathVariable("userName") String userName){
        log.info("Date: " + new Date() + " User Info: " + userName);
        UserInfoResponse userInfoResponse = new UserInfoResponse();
        userInfoResponse.setUserInfo(userInfoService.getUserByUserName(userName));
        UsersInfo user = userInfoService.getUserByUserName(userName);

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
