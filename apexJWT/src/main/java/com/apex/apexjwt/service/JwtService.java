package com.apex.apexjwt.service;


import com.apex.apexjwt.repository.UserRepo;
import com.apex.apexjwt.request.JwtRequest;
import com.apex.apexjwt.response.JwtResponse;
import com.apex.apexjwt.model.User;
import com.apex.apexjwt.util.JwtUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Service
@RequiredArgsConstructor
@Log4j2
public class JwtService implements UserDetailsService {

    @Autowired
    private UserRepo userRepo;
    @Autowired
    private JwtUtil jwtUtil;
    @Autowired
    private AuthenticationManager authenticationManager;

    public JwtResponse createJwtToken(JwtRequest jwtRequest) throws Exception{
        String userName = jwtRequest.getUserName();
        String password = jwtRequest.getPassword();

        authenticate(userName, password);
        final UserDetails userDetails = loadUserByUsername(userName);

        String newGeneratedToken = jwtUtil.generateToken(userDetails);

<<<<<<< HEAD
        User user = userRepo.findUserByUsername(userName);
=======
        User user = userDAO.findUserByUsername(userName);
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819

        return new JwtResponse(user, newGeneratedToken, "");

    }

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
<<<<<<< HEAD
        User user = userRepo.findUserByUsername(userName);
=======
        User user = userDAO.findUserByUsername(userName);
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819

        if(user != null){
            return new org.springframework.security.core.userdetails.User(
                    user.getUserName(),
                    user.getPassword(),
                    getAuthorities(user)
            );
        }else {
<<<<<<< HEAD
            log.error("Date: " + new Date() + " LoadUserByUserName: " + "User Name is not valid.");
=======
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
            throw new UsernameNotFoundException("User Name is not valid.");
        }
    }

    private Set getAuthorities(User user){
        Set authorities = new HashSet();
        user.getRoles().forEach(role -> authorities.add(new SimpleGrantedAuthority("ROLE_" + role.getRoleName())));

        return authorities;
    }

    private void authenticate(String userName, String password) throws Exception{
        try{
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(userName, password));
        }catch (DisabledException e){
<<<<<<< HEAD
            log.error("Date: " + new Date() + " Authenticate: " + "User is disabled");
=======
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
            throw new Exception("User is disabled");
        }catch (BadCredentialsException e){
            log.error("Date: " + new Date() + " Authenticate: " + "Bad Credential.");
            throw new Exception("Bad Credential.");
        }

    }

    public User findUserByUserNameAndPassword(String userName, String password){
        try{
<<<<<<< HEAD
            return userRepo.findUserByUserNameAndPassword(userName, password);
        }catch (Exception e){
            return null;
        }
    }

    public User findUserByUserName(String userName){
        try{
            return userRepo.findUserByUsername(userName);
=======
            return userDAO.findUserByUsername(userName);
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
        }catch (Exception e){
            return null;
        }
    }
}
