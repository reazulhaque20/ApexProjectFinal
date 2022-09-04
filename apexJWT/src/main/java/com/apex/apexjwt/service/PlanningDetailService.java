package com.apex.apexjwt.service;

import com.apex.apexjwt.model.PlanningDetail;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface PlanningDetailService {

    Response addPlanningDetail(PlanningDetail planningDetail);
    List<PlanningDetail> getAllPlanningDetail();

}
