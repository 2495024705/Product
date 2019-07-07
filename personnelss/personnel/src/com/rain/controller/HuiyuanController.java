package com.rain.controller;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rain.domain.CustomerInfo;
import com.rain.domain.CustomerInfoAdd;
import com.rain.domain.Job;
import com.rain.service.HuiyuanService;
import com.rain.service.RainService;

@Controller
public class HuiyuanController {
	@Autowired
	private HuiyuanService rainservice;

	// 如果在目录下输入为空，则跳转到指定链接
	@RequestMapping(value = "/huiyuan/")
	public ModelAndView index2(ModelAndView mv) {
		mv.setViewName("huiyuan/list");
		return mv;
	}

	// 如果在目录下输入任何不存在的参数，则跳转到list
	/*@RequestMapping(value = "/huiyuan/list")
	public String index2(Model model, @RequestParam("content") String content) {

		List<CustomerInfo> job_list = rainservice.getLists(content);

		model.addAttribute("list", job_list);
		return "huiyuan/list";
	}*/

	@RequestMapping(value = "/huiyuan/list", method = RequestMethod.GET)
	public String index(Model model, String content) {
		List<CustomerInfo> job_list=new ArrayList<>();
		if(content!=null&&content!="") {
			job_list = rainservice.getLists(content);
		}
		else{
			job_list = rainservice.getList();
		}
		
		model.addAttribute("list", job_list);
		return "huiyuan/list";
	}

	@RequestMapping(value = "/huiyuan/add", method = RequestMethod.GET)
	public String add(Model model, Integer id) {
		if (id != null) {
			CustomerInfo job = rainservice.selectByHuiyuanId(id);

			model.addAttribute("job", job);
		}
		return "/huiyuan/add";
	}

	@RequestMapping(value = "/huiyuan/add", method = RequestMethod.POST)
	public ModelAndView add(ModelAndView mv, @ModelAttribute CustomerInfoAdd huiyuan, Integer id) {
		// System.out.println(id);
		CustomerInfo cust=new CustomerInfo();
		cust.setId(huiyuan.getId());
		cust.setName(huiyuan.getName());
		cust.setAge(huiyuan.getAge());
		cust.setSex(huiyuan.getSex());
		cust.setBirthDay(huiyuan.getBirthDay());
		cust.setPhone(huiyuan.getPhone());
		cust.setSecondPhone(huiyuan.getSecondPhone());
		cust.setEmail(huiyuan.getEmail());
		cust.setAddUpconsumeMoney(huiyuan.getAddUpconsumeMoney());
		cust.setRegisterSubBranchUuid(huiyuan.getRegisterSubBranchUuid());
		cust.setEmployeeUuid(huiyuan.getEmployeeUuid());
		cust.setJob(huiyuan.getJob());
		cust.setProvince(huiyuan.getProvince());
		cust.setCity(huiyuan.getCity());
		cust.setAddress(huiyuan.getAddress());
		//huiyuan.setAddress(huiyuan.getQuiz1()+huiyuan.getQuiz2()+huiyuan.getAddress());
		if (id != null) {
			rainservice.update_huiyuanInfo(cust);
		} else {
			rainservice.insert_huiyuanInfo(cust);
		}
		mv.setViewName("redirect:/huiyuan/list");
		return mv;
	}

	@RequestMapping(value = "/huiyuan/delete", method = RequestMethod.GET)
	public void delete(Integer id) {
		System.out.println(id);
		if (id != null) {
			rainservice.delete_huiyuanInfo(id);
		}
	}
}
