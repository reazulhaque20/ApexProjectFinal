package com.apex.apexjwt.service;

import com.apex.apexjwt.repository.DepartmentRepo;
import com.apex.apexjwt.model.Department;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@RequiredArgsConstructor
@Service
public class DepartmentServiceImpl implements DepartmentService{

    private final DepartmentRepo departmentRepo;

    @Override
    public Department findDepartmentByName(String deptName) {
        return departmentRepo.findDepartmentByName(deptName);
    }

    @Override
    public List<Department> findAllActiveDepartment() {
        return departmentRepo.findAllActiveDepartment();
    }
}
