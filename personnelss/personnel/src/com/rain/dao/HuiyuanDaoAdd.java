package com.rain.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.rain.domain.CustomerInfo;
import com.rain.domain.CustomerInfoAdd;

import tk.mybatis.mapper.common.Mapper;

public interface HuiyuanDaoAdd extends Mapper<CustomerInfoAdd>{
	
}
