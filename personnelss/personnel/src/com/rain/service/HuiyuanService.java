package com.rain.service;

import java.util.List;

import com.rain.domain.CustomerInfo;
import com.rain.domain.CustomerInfoAdd;

public interface HuiyuanService {

	List<CustomerInfo> getList();

	CustomerInfo getCoustomerInfo(Integer id);

	void update_huiyuanInfo(CustomerInfo huiyuan);

	void insert_huiyuanInfo(CustomerInfo huiyuan);

	void delete_huiyuanInfo(Integer id);

	CustomerInfo selectByHuiyuanId(Integer id);

	List<CustomerInfo> getLists(String formName);

}
