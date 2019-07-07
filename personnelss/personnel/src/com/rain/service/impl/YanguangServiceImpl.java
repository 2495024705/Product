package com.rain.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rain.dao.HuiyuanDao;
import com.rain.dao.HuiyuanDaoAdd;
import com.rain.dao.YanguangDao;
import com.rain.domain.OptometrymessageInfo;
import com.rain.domain.OptometrymessageInfo;
import com.rain.domain.OptometrymessageInfo;
import com.rain.service.HuiyuanService;
import com.rain.service.YanguangService;
@Service
public class YanguangServiceImpl implements YanguangService {
@Autowired
private YanguangDao dao;
	@Override
	public List<OptometrymessageInfo> getList() {
		
		return dao.selectAll();
	}
	@Override
	public OptometrymessageInfo getCoustomerInfo(Integer id) {
		
	
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(OptometrymessageInfo huiyuan) {
		//huiyuan.setGmtCreate(new Date());
		//System.out.println(huiyuan.getName());
		dao.updateByPrimaryKey(huiyuan);
		
	}
	@Override
	public void insert_yanguangInfo(OptometrymessageInfo huiyuan) {
		dao.insert(huiyuan);
		
	}
	
	@Override
	public OptometrymessageInfo selectByHuiyuanId(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(Integer id) {
		dao.deleteByPrimaryKey(id);
		
	}

}
