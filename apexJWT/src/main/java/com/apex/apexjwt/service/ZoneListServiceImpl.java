package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ZoneList;
import com.apex.apexjwt.repository.ZoneListRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ZoneListServiceImpl implements ZoneListService {

    private final ZoneListRepo zoneListRepo;

    @Override
    public List<ZoneList> getAllZoneList() {
        return zoneListRepo.findAll();
    }

    @Override
    public Response addZoneList(ZoneList zoneList) {
        zoneListRepo.save(zoneList);
        Response response = new Response("Zone List Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateZoneList(ZoneList zoneList) {
        zoneListRepo.save(zoneList);
        Response response = new Response("Zone List Successfully Updated.", "success", 0L);
        return response;
    }
}
