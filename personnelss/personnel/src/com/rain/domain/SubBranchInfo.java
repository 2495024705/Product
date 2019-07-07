package com.rain.domain;

import java.util.Date;

public class SubBranchInfo {
    private Long id;

    private Date gmtCreate;

    private Date gmtModified;

    private String subBranchUuid;

    private String subBranchName;

    private String name;

    private String phone;

    private String email;

    private String address;

    private String ispassed;

    private String remark;

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

    public String getSubBranchUuid() {
        return subBranchUuid;
    }

    public void setSubBranchUuid(String subBranchUuid) {
        this.subBranchUuid = subBranchUuid == null ? null : subBranchUuid.trim();
    }

    public String getSubBranchName() {
        return subBranchName;
    }

    public void setSubBranchName(String subBranchName) {
        this.subBranchName = subBranchName == null ? null : subBranchName.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getIspassed() {
        return ispassed;
    }

    public void setIspassed(String ispassed) {
        this.ispassed = ispassed == null ? null : ispassed.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}