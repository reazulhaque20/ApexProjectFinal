package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.ZoneList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ZoneListRepo extends JpaRepository<ZoneList, Long> {
}
