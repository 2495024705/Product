package com.rain.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rain.dao.HuiyuanDao;
import com.rain.dao.HuiyuanDaoAdd;
import com.rain.dao.YanguangDao;
import com.rain.dao.dingdanDao;
import com.rain.dao.yanjingDao;
import com.rain.domain.EyeglassesInfo;
import com.rain.domain.Glassesmessage;
import com.rain.domain.Glassesmessage;
import com.rain.domain.Glassesmessage;
import com.rain.domain.Glassesmessage;
import com.rain.service.HuiyuanService;
import com.rain.service.YanguangService;
import com.rain.service.YanjingService;
import com.rain.service.dingdanService;
@Service
public class YanjingServiceImpl implements YanjingService {
@Autowired
private yanjingDao dao;
	@Override
	public List<Glassesmessage> getList() {
		
		return dao.selectAll();
	}
	@Override
	public Glassesmessage getCoustomerInfo(Integer id) {
		
	
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(Glassesmessage huiyuan) {
		//huiyuan.setGmtCreate(new Date());
		//System.out.println(huiyuan.getName());
		dao.updateByPrimaryKey(huiyuan);
		
	}
	@Override
	public void insert_yanguangInfo(Glassesmessage huiyuan) {
		
		dao.insert(huiyuan);
		
	}
	
	@Override
	public Glassesmessage selectByHuiyuanId(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(Integer id) {
		dao.deleteByPrimaryKey(id);
		
	}
	@Override
	public List<String> getLista() {
		
		return dao.selectInfo();
	}
	@Override
	public List<String> getListayuangong() {
		
		return dao.selectyuangong();
	}
	@Override
	public List<Glassesmessage> getLists(String formName) {
		
		return dao.getLists(formName);
	}

}
