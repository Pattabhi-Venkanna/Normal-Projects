package com.studentCrud.StudentSystem.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentCrud.StudentSystem.Entity.Student;
import com.studentCrud.StudentSystem.Repository.StudentRepo;

@Service
public class StudentService {
	@Autowired
	private StudentRepo repo;
	
	public void addStudent(Student s) {
		repo.save(s);
	}
	
	public List<Student> getAll(){
		
		return repo.findAll();
	}
	
	public Student getStudentbyId(int id) {
		
		Optional<Student> stu = repo.findById(id);
		
		if(stu.isPresent()) {
			return stu.get();
		}
		return null;
	}
	
	public void deleteStudent(int id) {
		repo.deleteById(id);
	}

}
