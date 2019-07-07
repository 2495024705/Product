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

import com.rain.domain.Branchmessage;
import com.rain.domain.Branchmessage;

import com.rain.domain.Job;
import com.rain.service.HuiyuanService;
import com.rain.service.RainService;
import com.rain.service.dingdanService;
import com.rain.service.fendianService;

@Controller
public class fendianController {
	@Autowired
	private fendianService rainservice;
	// 如果在目录下输入为空，则跳转到指定链接
		@RequestMapping(value="/fendian/")
		 public ModelAndView index2(ModelAndView mv){
			mv.setViewName("fendian/list");
			return mv;
		}
		// 如果在目录下输入任何不存在的参数，则跳转到list
		@RequestMapping(value="/fendian/{formName}")
		 public String index2(@PathVariable String formName){
			String blank = "/fendian/list";
			return blank;
		}
		@RequestMapping(value="/fendian/list",method=RequestMethod.GET)
		 public String index(Model model,String content){
			List<Branchmessage> job_list=new ArrayList<>();
			if(content!=null&&content!="") {
				job_list = rainservice.getLists(content);
			}
			else{
				job_list = rainservice.getList();
			}
			model.addAttribute("list",job_list);
			return "fendian/list";
		}
		@RequestMapping(value="/fendian/add",method=RequestMethod.GET)
		 public String add(Model model,Integer id){
			if(id!=null){
				Branchmessage job = rainservice.selectByHuiyuanId(id);
				
				model.addAttribute("job",job);
			}
			return "/fendian/add";
		}
		
		@RequestMapping(value="/fendian/add",method=RequestMethod.POST)
		 public ModelAndView add(ModelAndView mv,@ModelAttribute Branchmessage huiyuan ,Integer id){
			//System.out.println(id);
			if(id!=null){
				rainservice.update_yanguangInfo(huiyuan);
			}else{
				rainservice.insert_yanguangInfo(huiyuan);
			}
			mv.setViewName("redirect:/fendian/list");
			return mv;
		}
		@RequestMapping(value="/fendian/delete",method=RequestMethod.GET)
		 public void delete(Integer id){
			System.out.println(id);
			if(id!=null){
				rainservice.delete_yanguangInfo(id);
			}
		}
}
