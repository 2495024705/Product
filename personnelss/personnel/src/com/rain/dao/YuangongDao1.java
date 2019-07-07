package com.rain.dao;



import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.rain.domain.CustomerInfo;
import com.rain.domain.Employee;
import com.rain.domain.EmployeeInfo;
import com.rain.domain.EmployeeInfoyuangong;
import com.rain.domain.User;

import tk.mybatis.mapper.common.Mapper;

public interface YuangongDao1 extends Mapper<EmployeeInfoyuangong>{
	@Select("SELECT * from employee_info where name LIKE '%${name}%' or employee_uuid LIKE '%${name}%'")
	List<EmployeeInfoyuangong> getLists(@Param("name")String name);
	
	
	
}
