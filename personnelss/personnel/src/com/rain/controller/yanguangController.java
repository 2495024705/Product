package com.rain.controller;

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
import com.rain.domain.OptometrymessageInfo;
import com.rain.domain.Job;
import com.rain.domain.OptometrymessageInfo;
import com.rain.service.RainService;
import com.rain.service.YanguangService;

@Controller
public class yanguangController {
	@Autowired
	private YanguangService rainservice;
	// 如果在目录下输入为空，则跳转到指定链接
		@RequestMapping(value="/yanguang/")
		 public ModelAndView index2(ModelAndView mv){
			mv.setViewName("yanguang/list");
			return mv;
		}
		// 如果在目录下输入任何不存在的参数，则跳转到list
		@RequestMapping(value="/yanguang/{formName}")
		 public String index2(@PathVariable String formName){
			String blank = "/yanguang/list";
			return blank;
		}
		@RequestMapping(value="/yanguang/list",method=RequestMethod.GET)
		 public String index(Model model,String content){
			List<OptometrymessageInfo> job_list = rainservice.getList();
			
			model.addAttribute("list",job_list);
			return "yanguang/list";
		}
		@RequestMapping(value="/yanguang/add",method=RequestMethod.GET)
		 public String add(Model model,Integer id){
			if(id!=null){
				OptometrymessageInfo job = rainservice.selectByHuiyuanId(id);
				
				model.addAttribute("job",job);
			}
			return "/yanguang/add";
		}
		
		@RequestMapping(value="/yanguang/add",method=RequestMethod.POST)
		 public ModelAndView add(ModelAndView mv,@ModelAttribute OptometrymessageInfo yanguang ,Integer id){
			//System.out.println(id);
			if(id!=null){
				rainservice.update_yanguangInfo(yanguang);
			}else{
				rainservice.insert_yanguangInfo(yanguang);
			}
			mv.setViewName("redirect:/yanguang/list");
			return mv;
		}
		@RequestMapping(value="/yanguang/delete",method=RequestMethod.GET)
		 public void delete(Integer id){
			System.out.println(id);
			if(id!=null){
				rainservice.update_yanguangInfo(id);
			}
		}
}
