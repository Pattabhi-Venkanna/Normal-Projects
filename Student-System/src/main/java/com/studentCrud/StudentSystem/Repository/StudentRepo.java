package com.studentCrud.StudentSystem.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.studentCrud.StudentSystem.Entity.Student;
@Repository
public interface StudentRepo extends JpaRepository<Student, Integer> {

}
