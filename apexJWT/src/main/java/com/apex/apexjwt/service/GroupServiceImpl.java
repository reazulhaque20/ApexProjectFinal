package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Group;
import com.apex.apexjwt.repository.GroupRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GroupServiceImpl implements GroupService{

    private final GroupRepo groupRepo;

    @Override
    public List<Group> findAll() {
        return groupRepo.findAll();
    }
}
