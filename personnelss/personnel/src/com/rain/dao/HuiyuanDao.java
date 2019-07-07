package com.rain.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.rain.domain.CustomerInfo;

import tk.mybatis.mapper.common.Mapper;

public interface HuiyuanDao extends Mapper<CustomerInfo>{
	@Select("SELECT * from customer_info")
	List<CustomerInfo> getHuiyuanList();
	@Select("SELECT * from customer_info where id = #{id}")
	CustomerInfo getCoustomerInfo(@Param("id")Long id);
	@Select("SELECT * from customer_info where `name` LIKE '%${name}%' or phone LIKE '%${name}%'")
	List<CustomerInfo> getLists(@Param("name")String name);
	
	
}
