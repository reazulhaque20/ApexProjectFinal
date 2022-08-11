package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.UserInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserInfoRepo extends JpaRepository<UserInfo, Long> {

    @Query("SELECT u FROM UserInfo u WHERE u.userId=:userId")
    UserInfo findUserInfoByUserId(@Param("userId") String userId);
}
