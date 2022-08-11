package com.apex.apexjwt.service;

<<<<<<< HEAD
import com.apex.apexjwt.repository.DepartmentRepo;
=======
import com.apex.apexjwt.dao.DepartmentDAO;
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
import com.apex.apexjwt.model.Department;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@RequiredArgsConstructor
@Service
public class DepartmentServiceImpl implements DepartmentService{

<<<<<<< HEAD
    private final DepartmentRepo departmentRepo;

    @Override
    public Department findDepartmentByName(String deptName) {
        return departmentRepo.findDepartmentByName(deptName);
=======
    private final DepartmentDAO departmentDAO;

    @Override
    public Department findDepartmentByName(String deptName) {
        return departmentDAO.findDepartmentByName(deptName);
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
    }

    @Override
    public List<Department> findAllActiveDepartment() {
<<<<<<< HEAD
        return departmentRepo.findAllActiveDepartment();
=======
        return departmentDAO.findAllActiveDepartment();
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
    }
}
