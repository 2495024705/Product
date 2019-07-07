package com.rain.domain;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.KeySql;
@Table(name = "customer_info")
public class CustomerInfoAdd {
	@Id
	@KeySql(useGeneratedKeys = true)
	private Long id;

    private String name;

    private Integer age;

    private String sex;
@Column(name="birth_day")
    private String birthDay;

    private String phone;
    @Column(name="second_phone")
    private String secondPhone;

    private String email;
    @Column(name="add_upconsume_money")
    private BigDecimal addUpconsumeMoney;
    @Column(name="register_sub_branch_uuid")
    private String registerSubBranchUuid;
    @Column(name="employee_uuid")
    private String employeeUuid;

    private String job;

    private String province;

    private String city;

    private String address;
  

	private Integer ispassed;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

  
   
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay == null ? null : birthDay.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getSecondPhone() {
        return secondPhone;
    }

    public void setSecondPhone(String secondPhone) {
        this.secondPhone = secondPhone == null ? null : secondPhone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public BigDecimal getAddUpconsumeMoney() {
        return addUpconsumeMoney;
    }

    public void setAddUpconsumeMoney(BigDecimal addUpconsumeMoney) {
        this.addUpconsumeMoney = addUpconsumeMoney;
    }

    public String getRegisterSubBranchUuid() {
        return registerSubBranchUuid;
    }

    public void setRegisterSubBranchUuid(String registerSubBranchUuid) {
        this.registerSubBranchUuid = registerSubBranchUuid == null ? null : registerSubBranchUuid.trim();
    }

    public String getEmployeeUuid() {
        return employeeUuid;
    }

    public void setEmployeeUuid(String employeeUuid) {
        this.employeeUuid = employeeUuid == null ? null : employeeUuid.trim();
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job == null ? null : job.trim();
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getIspassed() {
        return ispassed;
    }

    public void setIspassed(Integer ispassed) {
        this.ispassed = ispassed;
    }
}