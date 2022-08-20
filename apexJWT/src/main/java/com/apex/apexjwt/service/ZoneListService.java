package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ZoneList;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface ZoneListService {
    List<ZoneList> getAllZoneList();
    Response addZoneList(ZoneList zoneList);
    Response updateZoneList(ZoneList zoneList);
}
