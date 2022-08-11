package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepo extends JpaRepository<User, Long> {

    @Query("SELECT u FROM User u WHERE u.userName=:userName")
    User findUserByUsername(@Param("userName") String userName);

    @Query("SELECT u FROM User u WHERE u.userName=:userName AND u.password=:password")
    User findUserByUserNameAndPassword(@Param("userName") String userName, @Param("password") String password);

    @Query("SELECT u FROM User u WHERE u.isEnable=true")
    List<User> findUserList();

    @Query("SELECT u FROM User u WHERE u.department=:deptName")
    List<User> getReportingUser(@Param("deptName") String deptName);

    @Query("SELECT u FROM User u WHERE u.userId=:userId")
    User findUserByUserId(@Param("userId") String userId);
}
