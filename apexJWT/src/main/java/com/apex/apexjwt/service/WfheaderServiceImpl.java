package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Wfheader;
import com.apex.apexjwt.repository.WfheaderRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class WfheaderServiceImpl implements WfheaderService{

    private final WfheaderRepo wfheaderRepo;

    @Override
    public List<Wfheader> findAll() {
        return wfheaderRepo.findAll();
    }
}
