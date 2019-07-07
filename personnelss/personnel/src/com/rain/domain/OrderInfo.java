package com.rain.domain;

import java.math.BigDecimal;
import java.util.Date;

public class OrderInfo {
    private Long id;

    private Date gmtCreate;

    private Date gmtModified;

    private String commodityCode;

    private String commodityName;

    private String orderUuid;

    private Integer number;

    private BigDecimal money;

    private BigDecimal advance;

    private BigDecimal balance;

    private String dateGlasses;

    private String dateTakingGlasses;

    private String name;

    private String phone;

    private String employeeNumber;

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

    public String getCommodityCode() {
        return commodityCode;
    }

    public void setCommodityCode(String commodityCode) {
        this.commodityCode = commodityCode == null ? null : commodityCode.trim();
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName == null ? null : commodityName.trim();
    }

    public String getOrderUuid() {
        return orderUuid;
    }

    public void setOrderUuid(String orderUuid) {
        this.orderUuid = orderUuid == null ? null : orderUuid.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    public BigDecimal getAdvance() {
        return advance;
    }

    public void setAdvance(BigDecimal advance) {
        this.advance = advance;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public String getDateGlasses() {
        return dateGlasses;
    }

    public void setDateGlasses(String dateGlasses) {
        this.dateGlasses = dateGlasses == null ? null : dateGlasses.trim();
    }

    public String getDateTakingGlasses() {
        return dateTakingGlasses;
    }

    public void setDateTakingGlasses(String dateTakingGlasses) {
        this.dateTakingGlasses = dateTakingGlasses == null ? null : dateTakingGlasses.trim();
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

    public String getEmployeeNumber() {
        return employeeNumber;
    }

    public void setEmployeeNumber(String employeeNumber) {
        this.employeeNumber = employeeNumber == null ? null : employeeNumber.trim();
    }

    public Integer getIspassed() {
        return ispassed;
    }

    public void setIspassed(Integer ispassed) {
        this.ispassed = ispassed;
    }
}