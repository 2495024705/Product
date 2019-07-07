package com.rain.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.rain.domain.Branchmessage;
import com.rain.domain.Indentmessage;
import com.rain.domain.OptometrymessageInfo;

import tk.mybatis.mapper.common.Mapper;

public interface fendianDao extends Mapper<Branchmessage>{
	@Select("SELECT * from branchmessage where branch_name LIKE '%${content}%' or phone LIKE '%${content}%'")
	List<Branchmessage> getLists(@Param("content")String content);

}
