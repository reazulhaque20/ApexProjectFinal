package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Union;
import com.apex.apexjwt.repository.UnionRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UnionServiceRepo implements UnionService{

    private final UnionRepo unionRepo;


    @Override
    public List<Union> getAllUnion() {
        return unionRepo.getAllUnion();
    }

    @Override
    public List<Union> getAllActiveUnion() {
        return unionRepo.getAllActiveUnion();
    }

    @Override
    public Response addUnion(Union union) {
        unionRepo.save(union);
        Response response = new Response("Union Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateUnion(Union union) {
        unionRepo.save(union);
        Response response = new Response("Union Successfully Updated.", "success", 0L);
        return response;
    }
}
