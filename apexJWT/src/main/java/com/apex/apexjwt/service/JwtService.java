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

        User user = userRepo.findUserByUsername(userName);

        return new JwtResponse(user, newGeneratedToken, "");

    }

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        User user = userRepo.findUserByUsername(userName);

        if(user != null){
            return new org.springframework.security.core.userdetails.User(
                    user.getUserName(),
                    user.getPassword(),
                    getAuthorities(user)
            );
        }else {
            log.error("Date: " + new Date() + " LoadUserByUserName: " + "User Name is not valid.");
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
            log.error("Date: " + new Date() + " Authenticate: " + "User is disabled");
            throw new Exception("User is disabled");
        }catch (BadCredentialsException e){
            log.error("Date: " + new Date() + " Authenticate: " + "Bad Credential.");
            throw new Exception("Bad Credential.");
        }

    }

    public User findUserByUserNameAndPassword(String userName, String password){
        try{
            return userRepo.findUserByUserNameAndPassword(userName, password);
        }catch (Exception e){
            return null;
        }
    }

    public User findUserByUserName(String userName){
        try{
            return userRepo.findUserByUsername(userName);
        }catch (Exception e){
            return null;
        }
    }
}
