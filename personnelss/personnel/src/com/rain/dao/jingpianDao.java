package com.rain.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.rain.domain.CustomerInfo;
import com.rain.domain.Lensmessage;

import tk.mybatis.mapper.common.Mapper;

public interface jingpianDao extends Mapper<Lensmessage>{
	@Select("SELECT * from lensmessage where lens_num LIKE '%${name}%' or brand LIKE '%${name}%'")
	List<Lensmessage> getLists(@Param("name")String name);
	
	
}
