package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Wfheader;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WfheaderRepo extends JpaRepository<Wfheader, Long> {
}
