package com.rain.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rain.dao.HuiyuanDao;
import com.rain.dao.HuiyuanDaoAdd;
import com.rain.dao.YanguangDao;
import com.rain.dao.YuangongDao;
import com.rain.dao.YuangongDao1;
import com.rain.dao.dingdanDao;
import com.rain.dao.yanjingDao;
import com.rain.domain.EmployeeInfoyuangong;

import com.rain.domain.EmployeeInfoyuangong;
import com.rain.domain.EmployeeInfoyuangong;
import com.rain.domain.EmployeeInfoyuangong;
import com.rain.domain.EmployeeInfoyuangong;
import com.rain.service.HuiyuanService;
import com.rain.service.YanguangService;
import com.rain.service.YanjingService;
import com.rain.service.dingdanService;
import com.rain.service.yuangongService;
@Service
public class yuangongServiceImpl implements yuangongService {
@Autowired
private YuangongDao1 dao;
	@Override
	public List<EmployeeInfoyuangong> getList() {
		
		return dao.selectAll();
	}
	@Override
	public EmployeeInfoyuangong getCoustomerInfo(Integer id) {
		
	
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(EmployeeInfoyuangong huiyuan) {
		//huiyuan.setGmtCreate(new Date());
		//System.out.println(huiyuan.getName());
		dao.updateByPrimaryKey(huiyuan);
		
	}
	@Override
	public void insert_yanguangInfo(EmployeeInfoyuangong huiyuan) {
		
		dao.insert(huiyuan);
		
	}
	
	@Override
	public EmployeeInfoyuangong selectByHuiyuanId(Integer id) {
		
		return dao.selectByPrimaryKey(id);
	}
	@Override
	public void update_yanguangInfo(Integer id) {
		dao.deleteByPrimaryKey(id);
		
	}
	@Override
	public List<EmployeeInfoyuangong> getLists(String content) {
		// TODO Auto-generated method stub
		return dao.getLists(content);
	}

}
