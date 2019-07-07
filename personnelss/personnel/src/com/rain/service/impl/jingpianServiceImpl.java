package com.rain.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rain.dao.HuiyuanDao;
import com.rain.dao.HuiyuanDaoAdd;
import com.rain.dao.YanguangDao;
import com.rain.dao.dingdanDao;
import com.rain.dao.jingpianDao;
import com.rain.domain.Lensmessage;
import com.rain.domain.Lensmessage;
import com.rain.domain.Lensmessage;
import com.rain.domain.Lensmessage;
import com.rain.service.HuiyuanService;
import com.rain.service.YanguangService;
import com.rain.service.dingdanService;
import com.rain.service.jingpianService;
@Service
public class jingpianServiceImpl implements jingpianService {
@Autowired
private jingpianDao dao;
	@Override
	public List<Lensmessage> getList() {
		
		return dao.selectAll();
	}
	@Override
	public Lensmessage getCoustomerInfo(Integer id) {
		
	
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(Lensmessage huiyuan) {
		//huiyuan.setGmtCreate(new Date());
		//System.out.println(huiyuan.getName());
		dao.updateByPrimaryKey(huiyuan);
		
	}
	@Override
	public void insert_yanguangInfo(Lensmessage huiyuan) {
		
		dao.insert(huiyuan);
		
	}
	
	@Override
	public Lensmessage selectByHuiyuanId(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(Integer id) {
		dao.deleteByPrimaryKey(id);
		
	}
	@Override
	public List<Lensmessage> getLists(String content) {
		
		return dao.getLists(content);
	}

}
