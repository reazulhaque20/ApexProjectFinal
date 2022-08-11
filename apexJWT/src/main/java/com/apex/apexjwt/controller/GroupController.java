package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.Group;
import com.apex.apexjwt.service.GroupService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/group")
public class GroupController {

    private final GroupService groupService;

    @GetMapping("/getAllGroups")
    public List<Group> getAllGroups(){
        return groupService.findAll();
    }
}
