package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Buyer;
import com.apex.apexjwt.repository.BuyerRepo;
import com.apex.apexjwt.response.Response;

import java.util.List;

public interface BuyerService {

    List<Buyer> getAllBuyer();
    List<Buyer> getAllActiveBuyer();
    Buyer getBuyerByBuyerCode(String buyerCode);
    Buyer getBuyerByBuyerName(String buyerName);
    Response addBuyer(Buyer buyer);
    Response updateBuyer(Buyer buyer);
    Response deleteBuyer(Buyer buyer);
}
