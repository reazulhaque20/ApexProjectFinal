package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.Wfline;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WflineRepo extends JpaRepository<Wfline, Long> {
}
