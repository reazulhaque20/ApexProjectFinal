package com.apex.apexjwt.service;

import com.apex.apexjwt.model.PlanningDetail;
import com.apex.apexjwt.repository.PlanningDetailRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PlanningDetailServiceImpl implements PlanningDetailService {

    private final PlanningDetailRepo planningDetailRepo;

    @Override
    public Response addPlanningDetail(PlanningDetail planningDetail) {
        Response response = new Response();
        planningDetailRepo.save(planningDetail);
        response.setMessage("Planning Detail Successfully Added.");
        response.setMessageType("success");
        response.setId(0L);
        return response;
    }

    @Override
    public List<PlanningDetail> getAllPlanningDetail() {
        return planningDetailRepo.findAll();
    }

    @Override
    public Response updatePlanningDetail(PlanningDetail planningDetail) {
        planningDetailRepo.save(planningDetail);
        Response response = new Response("Planning Detail Successfully Updated.", "success", 0L);
        return response;
    }
}
