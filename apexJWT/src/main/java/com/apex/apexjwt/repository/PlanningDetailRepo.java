package com.apex.apexjwt.repository;

import com.apex.apexjwt.model.PlanningDetail;
import com.apex.apexjwt.response.Response;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlanningDetailRepo extends JpaRepository<PlanningDetail, Long> {
}
