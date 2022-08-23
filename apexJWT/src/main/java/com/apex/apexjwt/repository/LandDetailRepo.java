package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.LandDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface LandDetailRepo extends JpaRepository<LandDetail, Long> {

    @Query("SELECT u FROM LandDetail u WHERE u.id=:id")
    public LandDetail getLandDetailById(@Param("id") Long id);
}
