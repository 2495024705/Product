package com.rain.service;

import java.util.List;

import com.rain.domain.CustomerInfo;
import com.rain.domain.CustomerInfoAdd;
import com.rain.domain.OptometrymessageInfo;

public interface YanguangService {

	List<OptometrymessageInfo> getList();

	OptometrymessageInfo getCoustomerInfo(Integer id);

	void update_yanguangInfo(OptometrymessageInfo huiyuan);

	void insert_yanguangInfo(OptometrymessageInfo huiyuan);

	void update_yanguangInfo(Integer id);

	OptometrymessageInfo selectByHuiyuanId(Integer id);


}
