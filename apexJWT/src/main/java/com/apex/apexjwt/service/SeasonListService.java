package com.apex.apexjwt.service;

import com.apex.apexjwt.model.SeasonList;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface SeasonListService {

    SeasonList getSeasonByID(Long id);
    List<SeasonList> getAllSeasonList();
    List<SeasonList> getAllActiveSeasonList();
    Response addSeasonList(SeasonList seasonList);
    Response updateSeasonList(SeasonList seasonList);
    SeasonList getSeasonBySeasonName(String seasonName);
}
