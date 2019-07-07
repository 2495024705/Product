package com.rain.domain;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.KeySql;
@Table(name="employee_info")
public class EmployeeInfoyuangong {
	@Id
	@KeySql(useGeneratedKeys=true)
    private Long id;

    @Column(name="employee_uuid")
    private String employeeUuid;
    private String phone;

    public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	private String email;
    private String name;
    @Column(name="passWord")
    
    private String passWord;
    @Column(name="isUsed")
private Integer isUsed;

    public Integer getIsUsed() {
	return isUsed;
}

public void setIsUsed(Integer isUsed) {
	this.isUsed = isUsed;
}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

   

    public String getEmployeeUuid() {
        return employeeUuid;
    }

    public void setEmployeeUuid(String employeeUuid) {
        this.employeeUuid = employeeUuid == null ? null : employeeUuid.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

   
}