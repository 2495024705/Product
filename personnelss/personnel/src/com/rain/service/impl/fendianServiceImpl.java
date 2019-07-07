package com.rain.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rain.dao.HuiyuanDao;
import com.rain.dao.HuiyuanDaoAdd;
import com.rain.dao.YanguangDao;
import com.rain.dao.dingdanDao;
import com.rain.dao.fendianDao;
import com.rain.domain.Branchmessage;
import com.rain.domain.Branchmessage;
import com.rain.domain.Branchmessage;
import com.rain.domain.Branchmessage;
import com.rain.service.HuiyuanService;
import com.rain.service.YanguangService;
import com.rain.service.dingdanService;
import com.rain.service.fendianService;
@Service
public class fendianServiceImpl implements fendianService {
@Autowired
private fendianDao dao;
	@Override
	public List<Branchmessage> getList() {
		
		return dao.selectAll();
	}
	@Override
	public Branchmessage getCoustomerInfo(Integer id) {
		
	
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(Branchmessage huiyuan) {
		//huiyuan.setGmtCreate(new Date());
		//System.out.println(huiyuan.getName());
		dao.updateByPrimaryKey(huiyuan);
		
	}
	@Override
	public void insert_yanguangInfo(Branchmessage huiyuan) {
		
		dao.insert(huiyuan);
		
	}
	
	@Override
	public Branchmessage selectByHuiyuanId(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(Integer id) {
		dao.deleteByPrimaryKey(id);
		
	}
	@Override
	public void delete_yanguangInfo(Integer id) {
		// TODO Auto-generated method stub
		dao.deleteByPrimaryKey(id);
	}
	@Override
	public List<Branchmessage> getLists(String content) {
		
		return dao.getLists(content);
	}

}
