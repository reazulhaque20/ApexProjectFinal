package com.apex.apexjwt.service;

import com.apex.apexjwt.repository.UserInfoRepo;
import com.apex.apexjwt.model.UserInfo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class UserInfoServiceImpl implements UserInfoService{

    private final UserInfoRepo userInfoRepo;

    @Override
    public UserInfo findByUserId(String userId) {
        return userInfoRepo.findUserInfoByUserId(userId);
    }
}
