package com.apex.apexjwt.service;

import com.apex.apexjwt.model.Certification;
import com.apex.apexjwt.repository.CertificationRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CertificationServiceImpl implements CertificationService {

    private final CertificationRepo certificationRepo;

    public List<Certification> getAllCertificate(){
        return certificationRepo.findAll();
    }
}
