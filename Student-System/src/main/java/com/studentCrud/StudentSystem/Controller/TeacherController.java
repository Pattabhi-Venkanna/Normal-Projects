package com.studentCrud.StudentSystem.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.studentCrud.StudentSystem.Entity.Teacher;
import com.studentCrud.StudentSystem.Service.TeacherService;

@Controller
public class TeacherController {
	@Autowired
	private TeacherService tser;
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping("/homepage")
	public String home(@RequestParam int userid, @RequestParam String password,Model m) {
		Teacher teacher=tser.getbyid(userid);
		if((teacher.getUserid()==userid) && (teacher.getPassword().equals(password))) {
			System.out.println("......");
			return "redirect:/home";
		}
		m.addAttribute("msg","user id or password is incorrect");
		return "login";
		
	}

}
