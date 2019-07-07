package com.rain.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.rain.domain.Indentmessage;
import com.rain.domain.OptometrymessageInfo;

import tk.mybatis.mapper.common.Mapper;

public interface dingdanDao extends Mapper<Indentmessage>{
	@Select("SELECT * from indentmessage where name LIKE '%${formName}%' or order_num like '%${formName}%' ")
	List<Indentmessage> getLists(@Param("formName")String formName);

}
