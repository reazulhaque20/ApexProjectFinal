package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.SeasonList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SeasonListRepo extends JpaRepository<SeasonList, Long> {

    @Query("SELECT u FROM SeasonList u WHERE u.id=:id")
    public SeasonList getSeasonById(@Param("id") Long id);

    @Query("SELECT u FROM SeasonList u WHERE u.status='active'")
    List<SeasonList> getAllActiveSeasonList();
}
