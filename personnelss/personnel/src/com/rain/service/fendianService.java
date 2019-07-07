package com.rain.service;

import java.util.List;

import com.rain.domain.Branchmessage;
import com.rain.domain.CustomerInfo;
import com.rain.domain.CustomerInfoAdd;
import com.rain.domain.Branchmessage;
import com.rain.domain.Branchmessage;
import com.rain.domain.Branchmessage;

public interface fendianService {

	List<Branchmessage> getList();

	Branchmessage getCoustomerInfo(Integer id);

	void update_yanguangInfo(Branchmessage huiyuan);

	void insert_yanguangInfo(Branchmessage huiyuan);

	void update_yanguangInfo(Integer id);

	Branchmessage selectByHuiyuanId(Integer id);

	void delete_yanguangInfo(Integer id);

	List<Branchmessage> getLists(String content);


}
