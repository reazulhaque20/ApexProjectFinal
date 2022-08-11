package com.apex.apexjwt.util;

import org.springframework.stereotype.Component;

import java.util.Optional;

@Component
public class Utility {

    public boolean compareStringUsingFilter(String str1, String str2){
        return Optional.ofNullable(str1).filter(str -> str.equals(str2)).isPresent();
    }

    public  boolean compareStringUsingMap(String str1, String str2){
        return Optional.ofNullable(str1).map(str -> str.equals(str2)).orElse(false);
    }
}
