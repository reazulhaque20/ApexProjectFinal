package com.apex.apexjwt.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "upazila")
public class Upazila {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "div_id")
    private Division div;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "dis_id")
    private District dis;

    @Column(name = "zila_name", length = 45)
    private String zilaName;

    @Column(name = "status", length = 10)
    private String status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Division getDiv() {
        return div;
    }

    public void setDiv(Division div) {
        this.div = div;
    }

    public District getDis() {
        return dis;
    }

    public void setDis(District dis) {
        this.dis = dis;
    }

    public String getZilaName() {
        return zilaName;
    }

    public void setZilaName(String zilaName) {
        this.zilaName = zilaName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}