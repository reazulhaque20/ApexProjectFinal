package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Department;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepartmentRepo extends JpaRepository<Department, Long> {

    @Query("SELECT u FROM Department u WHERE u.deptName=:deptName")
    Department findDepartmentByName(@Param("deptName") String deptName);

    @Query("SELECT u FROM Department u WHERE u.isEnable=true")
    List<Department> findAllActiveDepartment();
}
