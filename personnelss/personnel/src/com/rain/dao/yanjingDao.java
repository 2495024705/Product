package com.rain.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.rain.domain.EyeglassesInfo;
import com.rain.domain.Glassesmessage;
import com.rain.domain.Indentmessage;
import com.rain.domain.OptometrymessageInfo;

import tk.mybatis.mapper.common.Mapper;

public interface yanjingDao extends Mapper<Glassesmessage>{
@Select("SELECT eyeNumber from eyeglasses_info")
	List<String> selectInfo();
@Select("SELECT employee_uuid from employee_info")
List<String> selectyuangong();
@Select("SELECT * from glassesmessage where glasses_num LIKE '%${name}%' or brand LIKE '%${name}%'")
List<Glassesmessage> getLists(@Param("name")String name);

}
