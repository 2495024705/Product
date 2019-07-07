package com.rain.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.KeySql;
@Table(name = "indentmessage")
public class Indentmessage {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer id;
@Column(name="order_num")
    private String dnum;
@Column(name="glasses_num")
    private String yjnum;
@Column(name="optometry_num")
    private String ygnum;
@Column(name="lens_num")
    private String jnum;

    private String name;

    private String phone;
    @Column(name="Lens_number")
   private Integer lensnumber;
   public Integer getlensnumber() {
	return lensnumber;
}

public void setlensnumber(Integer lensnumber) {
	this.lensnumber = lensnumber;
}

public Integer getnumberofglasses() {
	return numberofglasses;
}

public void setnumberofglasses(Integer numberofglasses) {
	this.numberofglasses = numberofglasses;
}
@Column(name="number_of_glasses")
private Integer numberofglasses;




	private Integer money;

    private Integer pay;

    private Integer balance;

    private String yuan;
    
    private Date pdate;
    //@Column(name="'qdate'")
    private Date qdate;
  

    private String operations;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDnum() {
        return dnum;
    }

    public void setDnum(String dnum) {
        this.dnum = dnum == null ? null : dnum.trim();
    }

    public String getYjnum() {
        return yjnum;
    }

    public void setYjnum(String yjnum) {
        this.yjnum = yjnum == null ? null : yjnum.trim();
    }

    public String getJnum() {
        return jnum;
    }

    public void setJnum(String jnum) {
        this.jnum = jnum == null ? null : jnum.trim();
    }

    public String getYgnum() {
        return ygnum;
    }

    public void setYgnum(String ygnum) {
        this.ygnum = ygnum == null ? null : ygnum.trim();
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

  

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public Integer getPay() {
        return pay;
    }

    public void setPay(Integer pay) {
        this.pay = pay;
    }

    public Integer getBalance() {
        return balance;
    }

    public void setBalance(Integer balance) {
        this.balance = balance;
    }

    public String getYuan() {
        return yuan;
    }

    public void setYuan(String yuan) {
        this.yuan = yuan == null ? null : yuan.trim();
    }

    public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }

    public Date getQdate() {
        return qdate;
    }

    public void setQdate(Date qdate) {
        this.qdate = qdate;
    }

  

    public String getOperations() {
        return operations;
    }

    public void setOperations(String operations) {
        this.operations = operations == null ? null : operations.trim();
    }
}