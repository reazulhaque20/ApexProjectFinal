package com.apex.apexjwt.dao;

import com.apex.apexjwt.model.Role;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleDAO extends CrudRepository<Role, Long> {

    @Query("SELECT u FROM Role u WHERE u.roleName=:roleName")
    Role findRoleByRoleName(@Param("roleName") String roleName);
}
