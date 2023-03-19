package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepo extends JpaRepository<Role, Integer> {

    @Query("SELECT U FROM Role U WHERE U.roleName=:roleName")
    Role getRoleByRoleName(@Param("roleName") String roleName);
}
