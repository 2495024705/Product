package com.rain.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rain.dao.HuiyuanDao;
import com.rain.dao.HuiyuanDaoAdd;
import com.rain.dao.YanguangDao;
import com.rain.dao.dingdanDao;
import com.rain.domain.Indentmessage;
import com.rain.domain.Indentmessage;
import com.rain.domain.Indentmessage;
import com.rain.service.HuiyuanService;
import com.rain.service.YanguangService;
import com.rain.service.dingdanService;
@Service
public class DingdanServiceImpl implements dingdanService {
@Autowired
private dingdanDao dao;
	@Override
	public List<Indentmessage> getList() {
		
		return dao.selectAll();
	}
	@Override
	public Indentmessage getCoustomerInfo(Integer id) {
		
	
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(Indentmessage huiyuan) {
		//huiyuan.setGmtCreate(new Date());
		//System.out.println(huiyuan.getName());
		dao.updateByPrimaryKey(huiyuan);
		
	}
	@Override
	public void insert_yanguangInfo(Indentmessage huiyuan) {
		
		dao.insert(huiyuan);
		
	}
	
	@Override
	public Indentmessage selectByHuiyuanId(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(Integer id) {
		dao.deleteByPrimaryKey(id);
		
	}
	@Override
	public List<Indentmessage> getLists(String formName) {
		// TODO Auto-generated method stub
		return dao.getLists(formName);
	}

}
