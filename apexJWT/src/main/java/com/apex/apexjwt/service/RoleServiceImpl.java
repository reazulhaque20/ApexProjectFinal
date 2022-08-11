package com.apex.apexjwt.service;

<<<<<<< HEAD
import com.apex.apexjwt.repository.RoleRepo;
=======
import com.apex.apexjwt.dao.RoleDAO;
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
import com.apex.apexjwt.model.Role;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
@RequiredArgsConstructor
@Service
public class RoleServiceImpl implements RoleService{

<<<<<<< HEAD
    private final RoleRepo roleRepo;
=======
    private final RoleDAO roleDAO;
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819


    @Override
    public Role createNewRole(Role role) {
<<<<<<< HEAD
        return roleRepo.save(role);
=======
        return roleDAO.save(role);
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
    }

    @Override
    public Role findRoleByRoleName(String roleName) {
<<<<<<< HEAD
        return roleRepo.findRoleByRoleName(roleName);
    }

    @Override
    public List<Role> findAllRoles() {
        try{
            List<Role> roles = roleRepo.findAllRoles();
            return roles;
        }catch(Exception exception){
            exception.printStackTrace();
            return null;
        }
    }


=======
        return roleDAO.findRoleByRoleName(roleName);
    }
>>>>>>> 20ae9b4261f05f9d671a12232440f25889ab8819
}
