package com.bit.sts02.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
<<<<<<< HEAD
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
=======
import org.springframework.web.bind.annotation.RequestMapping;
>>>>>>> parent of ce447c1 (spring 3.x & ibatis)

import com.bit.sts02.model.EmpDao;

@Controller
@RequestMapping("/emp/")
public class EmpController {
	@Autowired
	EmpDao empDao;

	@RequestMapping("list")
	public void list(Model model) {
		model.addAttribute("list", empDao.selectAll());
	}
<<<<<<< HEAD
	
	@RequestMapping(value = "/add",method = RequestMethod.GET )
	public void addForm(Model model) {
		model.addAttribute("list", deptDao.selectAll());
	}
	
	@RequestMapping(value = "/add",method = RequestMethod.POST )
	public String add(@ModelAttribute EmpVo bean){
		empDao.insertOne(bean);
		return "redirect:list";
	}
	
	@RequestMapping(value = "/one", method = RequestMethod.GET)
	public void detail(@RequestParam("idx") int empno,Model model) {
		model.addAttribute("bean", empDao.selectOne(empno));
		model.addAttribute("list", deptDao.selectAll());
	}
	
	@RequestMapping(value = "/one", method = RequestMethod.POST)
	public String update(@ModelAttribute EmpVo bean) {
		empDao.updateOne(bean);
		return "redirect:./one?idx="+bean.getEmpno();
	}
	
	@RequestMapping(value = "/one/{empno}",method = RequestMethod.POST)
	public String delete(@PathVariable("empno") int empno) {
		empDao.deleteOne(empno);
		return "redirect:../list";
	}
=======
>>>>>>> parent of ce447c1 (spring 3.x & ibatis)
}
