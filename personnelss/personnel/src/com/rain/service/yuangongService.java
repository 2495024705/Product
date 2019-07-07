package com.rain.service;

import java.util.List;

import com.rain.domain.CustomerInfo;
import com.rain.domain.CustomerInfoAdd;
import com.rain.domain.EmployeeInfoyuangong;

import com.rain.domain.EmployeeInfoyuangong;
import com.rain.domain.EmployeeInfoyuangong;
import com.rain.domain.EmployeeInfoyuangong;

public interface yuangongService {

	List<EmployeeInfoyuangong> getList();

	EmployeeInfoyuangong getCoustomerInfo(Integer id);

	void update_yanguangInfo(EmployeeInfoyuangong huiyuan);

	void insert_yanguangInfo(EmployeeInfoyuangong huiyuan);

	void update_yanguangInfo(Integer id);

	EmployeeInfoyuangong selectByHuiyuanId(Integer id);

	List<EmployeeInfoyuangong> getLists(String content);


}
