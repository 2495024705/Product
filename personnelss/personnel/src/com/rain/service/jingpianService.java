package com.rain.service;

import java.util.List;

import com.rain.domain.CustomerInfo;
import com.rain.domain.CustomerInfoAdd;
import com.rain.domain.Lensmessage;
import com.rain.domain.Lensmessage;
import com.rain.domain.Lensmessage;

public interface jingpianService {

	List<Lensmessage> getList();

	Lensmessage getCoustomerInfo(Integer id);

	void update_yanguangInfo(Lensmessage huiyuan);

	void insert_yanguangInfo(Lensmessage huiyuan);

	void update_yanguangInfo(Integer id);

	Lensmessage selectByHuiyuanId(Integer id);

	List<Lensmessage> getLists(String content);


}
