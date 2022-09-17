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
    private Long value1;
    private Long value2;
    private Long totalRows;
    private Long nowShowing;
    List<T> anytypeObject = new ArrayList<>();
}
