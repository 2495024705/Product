package com.rain.service;

import java.util.List;

import com.rain.domain.CustomerInfo;
import com.rain.domain.CustomerInfoAdd;
import com.rain.domain.Indentmessage;
import com.rain.domain.Indentmessage;

public interface dingdanService {

	List<Indentmessage> getList();

	Indentmessage getCoustomerInfo(Integer id);

	void update_yanguangInfo(Indentmessage huiyuan);

	void insert_yanguangInfo(Indentmessage huiyuan);

	void update_yanguangInfo(Integer id);

	Indentmessage selectByHuiyuanId(Integer id);

	List<Indentmessage> getLists(String formName);


}
