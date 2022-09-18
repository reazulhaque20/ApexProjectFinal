package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Dropdown;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DropdownRepo extends JpaRepository<Dropdown, Long> {

    @Query("SELECT u FROM Dropdown u WHERE u.dropdownName=:dropDownName")
    List<Dropdown> getDropdownListByName(@Param("dropDownName") String dropDownName);

    @Query(value = "SELECT dd.* FROM Dropdown dd WHERE dd.dropdown_name like :search or dd.dropdown_value like :search OFFSET :start ROWS FETCH NEXT :length ROWS ONLY", nativeQuery = true)
    List<Dropdown> getDropdownList(@Param("start") Long start, @Param("length") Long length, @Param("search") String search);
}
