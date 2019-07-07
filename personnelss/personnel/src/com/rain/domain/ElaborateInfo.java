package com.rain.domain;

import java.util.Date;

public class ElaborateInfo {
    private Long id;

    private Date gmtCreate;

    private Date gmtModified;

    private String orderUuid;

    private String sph;

    private String cyl;

    private String axls;

    private Integer ispassed;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }

    public String getOrderUuid() {
        return orderUuid;
    }

    public void setOrderUuid(String orderUuid) {
        this.orderUuid = orderUuid == null ? null : orderUuid.trim();
    }

    public String getSph() {
        return sph;
    }

    public void setSph(String sph) {
        this.sph = sph == null ? null : sph.trim();
    }

    public String getCyl() {
        return cyl;
    }

    public void setCyl(String cyl) {
        this.cyl = cyl == null ? null : cyl.trim();
    }

    public String getAxls() {
        return axls;
    }

    public void setAxls(String axls) {
        this.axls = axls == null ? null : axls.trim();
    }

    public Integer getIspassed() {
        return ispassed;
    }

    public void setIspassed(Integer ispassed) {
        this.ispassed = ispassed;
    }
}