package com.apex.apexjwt.service;

<<<<<<< HEAD
import com.apex.apexjwt.repository.UserInfoRepo;
=======
import com.apex.apexjwt.dao.UserInfoDAO;
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
import com.apex.apexjwt.model.UserInfo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class UserInfoServiceImpl implements UserInfoService{

<<<<<<< HEAD
    private final UserInfoRepo userInfoRepo;

    @Override
    public UserInfo findByUserId(String userId) {
        return userInfoRepo.findUserInfoByUserId(userId);
=======
    private final UserInfoDAO userInfoDAO;

    @Override
    public UserInfo findByUserId(String userId) {
        return userInfoDAO.findUserInfoByUserId(userId);
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
    }
}
