package com.studentCrud.StudentSystem.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentCrud.StudentSystem.Entity.Teacher;
import com.studentCrud.StudentSystem.Repository.TeacherRepo;

@Service
public class TeacherService {
	@Autowired
	private TeacherRepo teacherRepo;
	
	public Teacher getbyid(int userid) {
		Optional<Teacher> teacher= teacherRepo.findById(userid);
		System.out.println(teacher);
		if(teacher.isPresent()) {
			return teacher.get();
		}
		
		return null;
	}
}
