package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.UsersInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface UsersInfoRepo extends JpaRepository<UsersInfo, Integer> {
    @Query("SELECT U FROM UsersInfo U WHERE U.userName=:userName")
    UsersInfo findUserByUserName(@Param("userName") String userName);

    @Query("SELECT U FROM UsersInfo U WHERE U.userName=:userName AND U.password=:password")
    UsersInfo findUserByUserNameAndPassword(@Param("userName") String userName, @Param("password") String password);

    @Query("SELECT U FROM UsersInfo U")
    List<UsersInfo> getAllUsers();

//    @Query(value = "SELECT * FROM MDM.VW_EMPLOYEE_DETAILS WHERE EMPLOYEE_ID=?1", nativeQuery = true)
//    EmployeeDetails getEmployeeDetailById(String employeeId);
}
