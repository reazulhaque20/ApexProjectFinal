package com.apex.apexjwt.service;

import com.apex.apexjwt.model.SeasonList;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface SeasonListService {

    List<SeasonList> getAllSeasonList();
    Response addSeasonList(SeasonList seasonList);
    Response updateSeasonList(SeasonList seasonList);
}
