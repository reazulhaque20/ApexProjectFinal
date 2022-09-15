package com.apex.apexjwt;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@OpenAPIDefinition(info = @Info(title = "ApexJWT API", version = "2.0", description = "API Information"))
public class ApexJwtApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(ApexJwtApplication.class, args);
    }

}
