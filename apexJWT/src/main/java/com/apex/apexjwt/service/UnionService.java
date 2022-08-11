package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Union;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface UnionService {

    List<Union> getAllUnion();
    List<Union> getAllActiveUnion();
    Response addUnion(Union union);
    Response updateUnion(Union union);
}
