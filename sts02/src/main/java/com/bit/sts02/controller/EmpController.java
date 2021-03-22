package com.bit.sts02.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.sts02.model.DeptDao;
import com.bit.sts02.model.EmpDao;
import com.bit.sts02.model.entity.EmpVo;

@Controller
@RequestMapping("/emp")
public class EmpController {
	@Autowired
	EmpDao empDao;
	@Autowired
	DeptDao deptDao;

	@RequestMapping("/list")
	public void list(Model model) {
		model.addAttribute("list", empDao.selectAll());
	}
	
	@RequestMapping(value = "/add",method = RequestMethod.GET )
	public void addForm(Model model) {
		model.addAttribute("list", deptDao.selectAll());
	}
	
	@RequestMapping(value = "/add",method = RequestMethod.POST )
	public String add(@ModelAttribute EmpVo bean){
		empDao.insertOne(bean);
		return "redirect:list";
	}
	
}









