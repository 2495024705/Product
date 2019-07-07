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
import com.rain.domain.Glassesmessage;
import com.rain.domain.Glassesmessage;
import com.rain.domain.Job;
import com.rain.domain.Select;
import com.rain.service.YanjingService;
import com.rain.service.dingdanService;
import com.rain.domain.Glassesmessage;



@Controller
public class yanjingController {
	@Autowired
	private YanjingService rainservice;

	// 如果在目录下输入为空，则跳转到指定链接
		@RequestMapping(value="/yanjing/")
		 public ModelAndView index2(ModelAndView mv){
			mv.setViewName("yanjing/list");
			return mv;
		}
		// 如果在目录下输入任何不存在的参数，则跳转到list
//		@RequestMapping(value="/yanjing/{formName}")
//		 public String index2(Model model,@PathVariable String formName){
//List<Glassesmessage> job_list = rainservice.getLists(formName);
//			
//			model.addAttribute("list",job_list);
//			String blank = "/yanjing/list";
//			return blank;
//		}
		@RequestMapping(value="/yanjing/list",method=RequestMethod.GET)
		 public String index(Model model,String content){
			List<Glassesmessage> job_list=new ArrayList<>();
			if(content!=null&&content!="") {
				job_list = rainservice.getLists(content);
			}
			else{
				job_list = rainservice.getList();
			}
			model.addAttribute("list",job_list);
			return "yanjing/list";
		}
		@RequestMapping(value="/yanjing/add",method=RequestMethod.GET)
		 public String add(Model model,Integer id){
			List<String> listyuangong = rainservice.getListayuangong();
			List<Select> jobs = new ArrayList<>();
			Select select = new Select();
			int i = 0;
			for (String s : listyuangong) {
				
				jobs.add(new Select(i,s));
				
				i+=1;
			}
			
			model.addAttribute("lists", jobs);
			if(id!=null){
				Glassesmessage job = rainservice.selectByHuiyuanId(id);
				
				model.addAttribute("job",job);
			}
			return "/yanjing/add";
		}
		
		@RequestMapping(value="/yanjing/add",method=RequestMethod.POST)
		 public ModelAndView add(ModelAndView mv,@ModelAttribute Glassesmessage dingdan ,Integer id){
			//System.out.println(id);
			if(id!=null){
				rainservice.update_yanguangInfo(dingdan);
			}else{
				rainservice.insert_yanguangInfo(dingdan);
			}
			mv.setViewName("redirect:/yanjing/list");
			return mv;
		}
		@RequestMapping(value="/yanjing/delete",method=RequestMethod.GET)
		 public void delete(Integer id){
			System.out.println(id);
			if(id!=null){
				rainservice.update_yanguangInfo(id);
			}
		}
}
