package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleRepo extends JpaRepository<Role, Long> {

    @Query("SELECT u FROM Role u WHERE u.roleName=:roleName")
    Role findRoleByRoleName(@Param("roleName") String roleName);

    @Query("SELECT u FROM Role u")
    List<Role> findAllRoles();
}
