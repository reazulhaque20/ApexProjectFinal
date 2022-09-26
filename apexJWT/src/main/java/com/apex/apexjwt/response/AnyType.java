package com.apex.apexjwt.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AnyType<T> {
    private Long draw;
    private Long recordsTotal;
    private Long recordsFiltered;
    List<T> data = new ArrayList<>();
}
