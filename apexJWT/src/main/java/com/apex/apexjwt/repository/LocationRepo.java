package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Location;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface LocationRepo extends JpaRepository<Location, Long> {

    @Query("SELECT u FROM Location u WHERE u.locationName=:locationName AND u.status='active'")
    Optional<Location> findLocationByName(@Param("locationName") String locationName);

    @Query("SELECT u FROM Location u WHERE u.locationId=:locationId AND u.status='active'")
    Location findLocationById(@Param("locationId") Long locationId);
}
