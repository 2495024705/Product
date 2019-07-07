package com.rain.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rain.dao.HuiyuanDao;

import com.rain.domain.CustomerInfo;

import com.rain.service.HuiyuanService;
@Service
public class HuiyuanServiceImpl implements HuiyuanService {
@Autowired
private HuiyuanDao dao;

	@Override
	public List<CustomerInfo> getList() {
		
		return dao.selectAll();
	}
	@Override
	public CustomerInfo getCoustomerInfo(Integer id) {
		
	
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_huiyuanInfo(CustomerInfo huiyuan) {
		//huiyuan.setGmtCreate(new Date());
		//System.out.println(huiyuan.getName());
		dao.updateByPrimaryKey(huiyuan);
		
	}
	@Override
	public void insert_huiyuanInfo(CustomerInfo huiyuan) {
	dao.insert(huiyuan);
		
	}
	@Override
	public void delete_huiyuanInfo(Integer id) {
		dao.deleteByPrimaryKey(id);
		
	}
	@Override
	public CustomerInfo selectByHuiyuanId(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public List<CustomerInfo> getLists(String formName) {
		// TODO Auto-generated method stub
		return dao.getLists(formName);
	}

}
