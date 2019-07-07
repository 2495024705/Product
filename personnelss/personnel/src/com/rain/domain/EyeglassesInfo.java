package com.rain.domain;

import java.math.BigDecimal;
import java.util.Date;

public class EyeglassesInfo {
    private Long id;

    private Date gmtModified;

    private Date gmtCreate;

    private String eyeNumber;

    private String eyeName;

    private String type;

    private Integer number;

    private BigDecimal price;

    private String salesperson;

    private Integer ispassed;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public String getEyeNumber() {
        return eyeNumber;
    }

    public void setEyeNumber(String eyeNumber) {
        this.eyeNumber = eyeNumber == null ? null : eyeNumber.trim();
    }

    public String getEyeName() {
        return eyeName;
    }

    public void setEyeName(String eyeName) {
        this.eyeName = eyeName == null ? null : eyeName.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getSalesperson() {
        return salesperson;
    }

    public void setSalesperson(String salesperson) {
        this.salesperson = salesperson == null ? null : salesperson.trim();
    }

    public Integer getIspassed() {
        return ispassed;
    }

    public void setIspassed(Integer ispassed) {
        this.ispassed = ispassed;
    }
}