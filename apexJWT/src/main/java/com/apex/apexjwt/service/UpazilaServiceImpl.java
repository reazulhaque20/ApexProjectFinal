package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Upazila;
import com.apex.apexjwt.repository.UpazilaRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UpazilaServiceImpl implements UpazilaService{

    private final UpazilaRepo upazilaRepo;


    @Override
    public List<Upazila> getAllUpazila() {
        return upazilaRepo.getAllUpazila();
    }

    @Override
    public List<Upazila> getAllActiveUpazila() {
        return upazilaRepo.getAllActiveUpazila();
    }

    @Override
    public List<Upazila> getUpazilaByDivIdAndDisId(Long divId, Long disId) {
        return upazilaRepo.getUpazilaByDivIdAndDisId(divId, disId);
    }

    @Override
    public Response addUpazila(Upazila upazila) {
        upazilaRepo.save(upazila);
        Response response = new Response("Upazila Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateUpazila(Upazila upazila) {
        upazilaRepo.save(upazila);
        Response response = new Response("Upazila Successfully Updated.", "success", 0L);
        return response;
    }
}
