package com.rain.service;

import java.util.List;

import com.rain.domain.CustomerInfo;
import com.rain.domain.CustomerInfoAdd;
import com.rain.domain.EyeglassesInfo;
import com.rain.domain.Glassesmessage;
import com.rain.domain.Glassesmessage;
import com.rain.domain.Glassesmessage;

public interface YanjingService {

	List<Glassesmessage> getList();

	Glassesmessage getCoustomerInfo(Integer id);

	void update_yanguangInfo(Glassesmessage huiyuan);

	void insert_yanguangInfo(Glassesmessage huiyuan);

	void update_yanguangInfo(Integer id);

	Glassesmessage selectByHuiyuanId(Integer id);

	List<String> getLista();

	List<String> getListayuangong();

	List<Glassesmessage> getLists(String formName);


}
