package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Buyer;
import com.apex.apexjwt.repository.BuyerRepo;
import com.apex.apexjwt.response.Response;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class BuyerServiceImpl implements BuyerService {

    private final BuyerRepo buyerRepo;

    @Override
    public List<Buyer> getAllBuyer() {
        return buyerRepo.findAll();
    }

    @Override
    public List<Buyer> getAllActiveBuyer() {
        return buyerRepo.getAllActiveBuyer();
    }

    @Override
    public Buyer getBuyerByBuyerCode(String buyerCode) {
        return buyerRepo.getBuyerByBuyerCode(buyerCode);
    }

    @Override
    public Buyer getBuyerByBuyerName(String buyerName) {
        return buyerRepo.getBuyerByBuyerName(buyerName);
    }

    @Override
    public Response addBuyer(Buyer buyer) {
        Response response;
        buyerRepo.save(buyer);
        response = new Response("Buyer Successfully Added.", "success", 0L);
        return response;
    }

    @Override
    public Response updateBuyer(Buyer buyer) {
        Response response;
        buyerRepo.save(buyer);
        response = new Response("Buyer Successfully Updated.", "success", 0L);
        return response;
    }

    @Override
    public Response deleteBuyer(Buyer buyer) {
        Response response;
        buyer.setStatus("inActive");
        buyerRepo.save(buyer);
        response = new Response("Buyer Successfully Updated.", "success", 0L);
        return response;
    }
}
