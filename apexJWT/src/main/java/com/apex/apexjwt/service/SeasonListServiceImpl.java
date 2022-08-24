package com.apex.apexjwt.service;

import com.apex.apexjwt.model.SeasonList;
import com.apex.apexjwt.repository.SeasonListRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SeasonListServiceImpl implements SeasonListService {

    private final SeasonListRepo seasonListRepo;

    @Override
    public SeasonList getSeasonByID(Long id) {
        return seasonListRepo.getSeasonById(id);
    }

    @Override
    public List<SeasonList> getAllSeasonList() {
        return seasonListRepo.findAll();
    }

    @Override
    public Response addSeasonList(SeasonList seasonList) {
        seasonListRepo.save(seasonList);
        Response response = new Response("Season List Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateSeasonList(SeasonList seasonList) {
        seasonListRepo.save(seasonList);
        Response response = new Response("Season List Successfully Updated.", "success", 0L);
        return response;
    }
}
