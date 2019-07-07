package com.rain.dao;

import static com.rain.util.common.Constants.USERTABLE;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.rain.domain.CustomerInfo;
import com.rain.domain.Employee;
import com.rain.domain.EmployeeInfo;
import com.rain.domain.EmployeeInfoyuangong;
import com.rain.domain.User;

import tk.mybatis.mapper.common.Mapper;

public interface YuangongDao extends Mapper<EmployeeInfo>{
	@Select("select * from employee_info where employee_uuid=#{loginname} and passWord=#{password}")
	EmployeeInfo get_login(@Param("loginname")String loginname,@Param("password") String password);
	@Select("select id,employee_uuid,name from employee_info")
	List<EmployeeInfoyuangong> selectAlls();
	
	
}
