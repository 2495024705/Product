package com.rain.domain;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.KeySql;

@Table(name = "glassesmessage")
public class Glassesmessage {
	@Id
	@KeySql(useGeneratedKeys = true)
    private Integer id;
@Column(name="glasses_num")
    private String yjnum;

    private String brand;

    private Integer number;

    private Integer price;

    private String person;

    private Integer checks;

    private String operation;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getYjnum() {
        return yjnum;
    }

    public void setYjnum(String yjnum) {
        this.yjnum = yjnum == null ? null : yjnum.trim();
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand == null ? null : brand.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getPerson() {
        return person;
    }

    public void setPerson(String person) {
        this.person = person == null ? null : person.trim();
    }

    public Integer getCheck() {
        return checks;
    }

    public void setCheck(Integer check) {
        this.checks = check;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation == null ? null : operation.trim();
    }
}