package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.PlanningDetail;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.PlanningDetailService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("api/planningDetail")
public class PlanningDetailController {

    private final PlanningDetailService planningDetailService;

    @GetMapping("/getAllPlanningDetail")
    List<PlanningDetail> getAllPlanningDetail(){
        return planningDetailService.getAllPlanningDetail();
    }

    @PostMapping("/addPlanningDetail")
    Response addPlanningDetail(@RequestBody PlanningDetail planningDetail){
        Response response = planningDetailService.addPlanningDetail(planningDetail);
        return response;
    }
}
