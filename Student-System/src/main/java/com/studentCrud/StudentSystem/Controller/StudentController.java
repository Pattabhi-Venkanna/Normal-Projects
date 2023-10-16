package com.studentCrud.StudentSystem.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.studentCrud.StudentSystem.Entity.Student;
import com.studentCrud.StudentSystem.Service.StudentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
	@Autowired
	private StudentService ser;
	
	@RequestMapping("/")
	public String mainSchool() {
		return "school";
	}
	
	@RequestMapping("/home")
	public String home(Model m) {
		List<Student> st = ser.getAll();
		System.out.println(st);
		
		m.addAttribute("students", st);
		return "home";
	}
	@RequestMapping("/addStudent")
	public String addStudent() {
		
		return "add_student";
	}

	@RequestMapping("/saveStudent")
	public String saveStudent(Student s, Model m) {
		ser.addStudent(s);
		System.out.println(s);
		m.addAttribute("msg", "Student added Succesfully in Student management System");
		
		return "redirect:/home";
	}
	@RequestMapping("/edit-{id}")
	public String edit(@PathVariable int id, Model m) {
		Student s=ser.getStudentbyId(id);
		System.out.println(s);
		m.addAttribute("student",s);
		return "edit_student";
	}
	
	@PostMapping("/updateStudent")
	public String update(@ModelAttribute Student s, Model m) {
		ser.addStudent(s);
		m.addAttribute("msg", "Student added Succesfully in Student management System");
		return "redirect:/home";
	}
	@RequestMapping("/delete-{id}")
	public String delete(@PathVariable int id, Model m) {
		ser.deleteStudent(id);
		m.addAttribute("msg","Student deleted Succesfully");
		
		return "redirect:/home";
	}
}

