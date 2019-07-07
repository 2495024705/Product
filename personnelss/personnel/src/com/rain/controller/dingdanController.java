package com.rain.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rain.domain.CustomerInfo;
import com.rain.domain.Glassesmessage;
import com.rain.domain.Indentmessage;
import com.rain.domain.Indentmessage;
import com.rain.domain.Job;
import com.rain.domain.Lensmessage;
import com.rain.domain.Select;
import com.rain.service.YanjingService;
import com.rain.service.dingdanService;
import com.rain.service.jingpianService;
import com.sun.org.apache.regexp.internal.recompile;
import com.rain.domain.Indentmessage;

@Controller
public class dingdanController {
	@Autowired
	private dingdanService rainservice;
	@Autowired
	private YanjingService yanjingService;
	
	@Autowired
	private jingpianService jingpianService;
	// 如果在目录下输入为空，则跳转到指定链接
	@RequestMapping(value = "/dingdan/")
	public ModelAndView index2(ModelAndView mv) {
		mv.setViewName("dingdan/list");
		return mv;
	}

	// 如果在目录下输入任何不存在的参数，则跳转到list
//	@RequestMapping(value = "/dingdan/list/{content}",method=RequestMethod.GET)
//	public String index2(Model model, @PathVariable String content) {
//		List<Indentmessage> job_list = rainservice.getLists(content);
//
//		model.addAttribute("list", job_list);
//		String blank = "/dingdan/list";
//		return blank;
//	}

	@RequestMapping(value = "/dingdan/list", method = RequestMethod.GET)
	public String index(Model model, String content) {
		List<Indentmessage> job_list=new ArrayList<>();
		
		
		
		
		if(content!=null&&content!="") {
			job_list = rainservice.getLists(content);
		}
		else{
			job_list = rainservice.getList();
		}
		model.addAttribute("list", job_list);
		return "dingdan/list";
	}

	@RequestMapping(value = "/dingdan/add", method = RequestMethod.GET)
	public String add(Model model, Integer id) {
		if (id != null) {
			Indentmessage job = rainservice.selectByHuiyuanId(id);

			model.addAttribute("job", job);
		}
		List<Select> job_list = new ArrayList<>();
		List<String> list = yanjingService.getLista();
		
		List<String> listyuangong = yanjingService.getListayuangong();
		//List<String> listy = yanjingService.getLista();
		List<Select> jobs = new ArrayList<>();
		Select select = new Select();
		int i = 0;
		for (String s : list) {
			
			job_list.add(new Select(i,s));
			
			i+=1;
		}
		
		model.addAttribute("lists", job_list);
		List<Glassesmessage> list2 = yanjingService.getList();
		List<Select> jobss = new ArrayList<>();
		i = 0;
		for (Glassesmessage s : list2) {
		
			jobss.add(new Select(i,s.getYjnum()));
			i+=1;
		}
		//眼镜 2s  镜片 3s
		model.addAttribute("listss", jobss);
		List<Lensmessage> list3 = jingpianService.getList();
		List<Select> jobsss = new ArrayList<>();
		i = 0;
		for (Lensmessage s : list3) {
		
			jobsss.add(new Select(i,s.getJnum()));
			i+=1;
		}
		model.addAttribute("listsss", jobsss);
		i = 0;
		for (String s : listyuangong) {
			
			jobs.add(new Select(i,s));
			i+=1;
		}
		
		model.addAttribute("list1", jobs);
		return "/dingdan/add";
	}

	@RequestMapping(value = "/dingdan/add", method = RequestMethod.POST)
	public ModelAndView add(ModelAndView mv, @ModelAttribute Indentmessage dingdan, Integer id) {
		// System.out.println(id);
		if (id != null) {
			rainservice.update_yanguangInfo(dingdan);
		} else {
			Glassesmessage glassesmessage=yanjingService.getLists(dingdan.getYjnum()).get(0);
			glassesmessage.setNumber(glassesmessage.getNumber()-dingdan.getnumberofglasses());
			yanjingService.update_yanguangInfo(glassesmessage);
			Lensmessage lensmessage=jingpianService.getLists(dingdan.getJnum()).get(0);
			lensmessage.setnumber(lensmessage.getnumber()-dingdan.getlensnumber());
			jingpianService.update_yanguangInfo(lensmessage);
			dingdan.setMoney((glassesmessage.getPrice())*(dingdan.getnumberofglasses())+(lensmessage.getPrice())*(dingdan.getlensnumber()));
			dingdan.setBalance(dingdan.getMoney());
			rainservice.insert_yanguangInfo(dingdan);
		}
		mv.setViewName("redirect:/dingdan/list");
		return mv;
	}

	@RequestMapping(value = "/dingdan/delete", method = RequestMethod.GET)
	public void delete(Integer id) {
		System.out.println(id);
		if (id != null) {
			rainservice.update_yanguangInfo(id);
		}
	}


}
