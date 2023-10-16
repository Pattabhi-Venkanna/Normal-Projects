package com.studentCrud.StudentSystem.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.studentCrud.StudentSystem.Entity.Teacher;
@Repository
public interface TeacherRepo extends JpaRepository<Teacher, Integer> {

}
