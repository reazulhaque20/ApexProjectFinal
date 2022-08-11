package com.apex.apexjwt.service;

import com.apex.apexjwt.model.ReportingUser;
import com.apex.apexjwt.repository.ReportingUserRepo;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
@Log4j2
public class ReportingUserServiceImpl implements ReportingUserService{

    private final ReportingUserRepo reportingUserRepo;


    @Override
    public List<ReportingUser> findAllReportingUserByDepartment(String department) {
        try {
            List<ReportingUser> reportingUserList = reportingUserRepo.findReportingUserByDepartment(department);
            if(reportingUserList.isEmpty()){
                log.error("Get Reporting user list is empty.");
                return null;
            }else {
                return reportingUserList;
            }
        }catch(Exception exception){
            exception.printStackTrace();
            log.error("Error while getting reporting user list.");
            return null;
        }

    }
}
