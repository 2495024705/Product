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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rain.domain.CustomerInfo;
import com.rain.domain.EmployeeInfoyuangong;

import com.rain.domain.EmployeeInfoyuangong;
import com.rain.domain.EmployeeInfoyuangong;
import com.rain.domain.EmployeeInfoyuangong;
import com.rain.domain.Job;
import com.rain.service.YanjingService;
import com.rain.service.dingdanService;
import com.rain.service.yuangongService;
import com.rain.domain.EmployeeInfoyuangong;



@Controller
public class yuangongController {
	@Autowired
	private yuangongService rainservice;
	// 如果在目录下输入为空，则跳转到指定链接
		@RequestMapping(value="/yuangong/")
		 public ModelAndView index2(ModelAndView mv){
			mv.setViewName("yuangong/list");
			return mv;
		}
		// 如果在目录下输入任何不存在的参数，则跳转到list
		/*@RequestMapping(value="/yuangong/list",method=RequestMethod.GET)
		 public String index2(Model model,@RequestParam("content")String content){
			String blank = "/yuangong/list";
			return blank;
		}*/
		@RequestMapping(value="/yuangong/list",method=RequestMethod.GET)
		 public String index(Model model,String content){
			List<EmployeeInfoyuangong> job_list=new ArrayList<>();
			if(content!=null&&content!="") {
				job_list = rainservice.getLists(content);
				for(EmployeeInfoyuangong e :job_list) {
					e.setEmployeeUuid(e.getPassWord());
				}
			}
			else{
				job_list = rainservice.getList();
			}
			
			model.addAttribute("list",job_list);
			return "yuangong/list";
		}
		@RequestMapping(value="/yuangong/add",method=RequestMethod.GET)
		 public String add(Model model,Integer id){
			if(id!=null){
				EmployeeInfoyuangong job = rainservice.selectByHuiyuanId(id);
				
				model.addAttribute("job",job);
			}
			return "/yuangong/add";
		}
		
		@RequestMapping(value="/yuangong/add",method=RequestMethod.POST)
		 public ModelAndView add(ModelAndView mv,@ModelAttribute EmployeeInfoyuangong dingdan ,Integer id){
			//System.out.println(id);
			if(id!=null){
				
				rainservice.update_yanguangInfo(dingdan);
			}else{
				rainservice.insert_yanguangInfo(dingdan);
			}
			mv.setViewName("redirect:/yuangong/list");
			return mv;
		}
		@RequestMapping(value="/yuangong/delete",method=RequestMethod.GET)
		 public void delete(Integer id){
			System.out.println(id);
			if(id!=null){
				rainservice.update_yanguangInfo(id);
			}
		}
}
