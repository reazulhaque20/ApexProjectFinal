package com.apex.apexjwt.controller;

import com.apex.apexjwt.request.AddContractRequest;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ContractDetailsController {

    @PostMapping("/createContract")
    public void createContract(@RequestBody AddContractRequest addContractRequest){
        System.out.println(addContractRequest);
    }
}
