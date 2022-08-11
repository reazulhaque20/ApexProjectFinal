package com.apex.apexjwt.controller;

import com.apex.apexjwt.model.FarmerDetail;
import com.apex.apexjwt.model.FarmerFamilyDetail;
import com.apex.apexjwt.model.FarmerFinancialDetail;
import com.apex.apexjwt.request.FarmerAddRequest;
import com.apex.apexjwt.response.FarmerDetailResponse;
import com.apex.apexjwt.response.Response;
import com.apex.apexjwt.service.FarmerFamilyDetailService;
import com.apex.apexjwt.service.FarmerFinancialDetailService;
import com.apex.apexjwt.service.FarmerService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.support.ServletContextResource;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.core.io.Resource;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletContext;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@RestController
@RequestMapping("/api/farmer")
@RequiredArgsConstructor
@Log4j2
public class FarmerController {
    

    private final FarmerService farmerService;
    private final FarmerFamilyDetailService farmerFamilyDetailService;
    private final FarmerFinancialDetailService farmerFinancialDetailService;
    @Autowired
    ServletContext servletContext;

    private final Path root = Paths.get("F://XAMPP7.4//htdocs//apexJWT//farmerImages//");
    
    
    @GetMapping("/getAllFarmers")
    public List<FarmerDetailResponse> getAllFarmers(){
        return farmerService.getAllFarmer();
    }

    @GetMapping("/getFarmerById/{farmerId}")
    public FarmerDetail getFarmerById(@PathVariable("farmerId") Long farmerId){
        return farmerService.getFarmerById(farmerId);
    }

    @GetMapping("/getFarmerDetail/{farmerId}")
    public FarmerDetailResponse getFarmerDetail(@PathVariable("farmerId") Long farmerId){
        return farmerService.getFarmerDetail(farmerId);
    }

    @GetMapping("/getAllFarmerNames")
    public List<String> getAllFarmerNames(){
        return farmerService.getAllFarmerNames();
    }

//    @GetMapping("/getAllFarmers")
//    public List<FarmerDetail> getAllFarmers(){
//        return farmerService.getAllFarmers();
//    }

    @PostMapping("/createFarmer")
    public Response createFarmer(@RequestBody FarmerAddRequest farmerAddRequest){
        Response response = new Response();
        System.out.println(farmerAddRequest);
        log.info("Create Farmer Request: " + farmerAddRequest);
        if(farmerAddRequest != null){
            System.out.println(farmerAddRequest);
        }
        System.out.println(farmerAddRequest);

        FarmerDetail farmerDetail = farmerAddRequest.getFarmerDetail();

        Boolean isFarmerExist = farmerService.getFarmerByFarmerNameNidMobileNo(farmerDetail.getFarmerName(), farmerDetail.getNid(), farmerDetail.getMobile());
        if(isFarmerExist){
            response.setMessage("Farmer Already Exist");
            response.setMessageType("error");
            return response;
        }
        farmerDetail = farmerService.createFarmer(farmerDetail);

        for (FarmerFamilyDetail familyDetail: farmerAddRequest.getFarmerFamilyDetailList()) {
            if(familyDetail.getId() != 0) {
                familyDetail.setFarmer(farmerDetail);
                familyDetail.setId(0L);
                farmerFamilyDetailService.createFarmerFamilyDetail(familyDetail);
            }
        }

        FarmerFinancialDetail farmerFinancialDetail = farmerAddRequest.getFarmerFinancialDetail();

        farmerFinancialDetail.setFarmer(farmerDetail);
        farmerFinancialDetailService.createFarmerFinancialDetails(farmerFinancialDetail);

        response.setMessage("Farmer Created Successfully");
        response.setMessageType("success");
        response.setId(farmerDetail.getId());
        return response;
    }

    @PostMapping("/uploadImage/{farmerId}")
    public ResponseEntity<Object> handleFileUpload(@RequestParam("file") MultipartFile file, @PathVariable("farmerId") Long farmerId){
//        String ftpAddress = "127.0.0.1";
//        String ftpUser = "apexjwt";
//        String ftpPassword = "apexjwt";

//        FTPClient ftpClient = null;

        FarmerDetail farmerDetail = farmerService.getFarmerById(farmerId);
        log.info("Farmer Profile Image Upload: " + farmerDetail);
        try{
//            ftpClient = new FTPClient();
//            ftpClient.connect(ftpAddress);

//            if(ftpClient.login(ftpUser,ftpPassword)){
//                ftpClient.enterLocalPassiveMode();
//                ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
//                String fileExtension = FilenameUtils.getExtension(file.getOriginalFilename());
//                String profileFileName = file.getOriginalFilename();
//                profileFileName = farmerDetail.getFarmerName()+ "." + fileExtension;
//                boolean result = ftpClient.storeFile(profileFileName, file.getInputStream());
//                if(result){
//                    profileFileName = farmerDetail.getFarmerName();
//                    farmerDetail.setProfileImagePath(profileFileName);
//                    farmerService.createFarmer(farmerDetail);
//                    ftpClient.logout();
//                    ftpClient.disconnect();
//                }
//            }
            String fileExtension = FilenameUtils.getExtension(file.getOriginalFilename());
            String profileFileName = file.getOriginalFilename();
            profileFileName = "//" + farmerDetail.getFarmerName()+ "." + fileExtension;
            farmerDetail.setProfileImagePath(farmerDetail.getFarmerName()+ "." + fileExtension);
            farmerService.createFarmer(farmerDetail);
            byte[] bytes = file.getBytes();
            Path path = Paths.get(root + profileFileName);
            log.info("Farmer Profile Image Upload Path: " + path);
            Files.write(path, bytes);
            log.info("Farmer Profile Image Upload Done. ");
//            Files.createDirectory(root);
//            Files.copy(file.getInputStream(), this.root.resolve(file.getOriginalFilename()));


        }catch(Exception e){
//            ftpClient.logout();
//            ftpClient.disconnect();
            e.printStackTrace();
            ResponseEntity.badRequest().build();
            log.error("Farmer Profile Image Upload Error");
        }
        return ResponseEntity.ok().build();
    }

    @GetMapping("/getFarmerImage/{farmerId}")
    public @ResponseBody byte[] getFarmerImage(@PathVariable("farmerId") Long farmerId){
//        ResponseEntity<byte[]>
        FarmerDetail farmerDetail = farmerService.getFarmerById(farmerId);
        String fileName = farmerDetail.getProfileImagePath();
        FTPClient ftpClient = new FTPClient();
        log.info("Get Farmer Image: " + farmerId);
        try(OutputStream os = new FileOutputStream(fileName)){
            ftpClient.connect("127.0.0.1");
            boolean login = ftpClient.login("apexjwt", "apexjwt");
            if(login){
                System.out.println("Login success......");
                log.info("FTP Login Successful");
                HttpHeaders headers = new HttpHeaders();


//                boolean status = ftpClient.retrieveFile(fileName, os);
                InputStream in = servletContext.getResourceAsStream(fileName);
                log.info("Farmer Profile Image Name: " + fileName);
                return IOUtils.toByteArray(in);

            }
        }catch(IOException e){
            e.printStackTrace();
        }
return null;
    }

    @PutMapping("/updateFarmer")
    public Response updateFarmer(@RequestBody FarmerAddRequest farmerAddRequest){
        Response response = farmerService.updateFarmer(farmerAddRequest);
        log.info("Farmer Add Request: " + farmerAddRequest);
        return response;
    }

    @DeleteMapping("/deleteFarmer/{farmerId}")
    public Response deleteFarmer(@PathVariable("farmerId") Long farmerId){
        Response response = farmerService.deleteFarmer(farmerId);
        return response;
    }
    
}
