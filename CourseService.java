package com.qdu.service;

import com.qdu.dao.CourseDAO;
import com.qdu.dao.impl.CourseDAOImpl;
import com.qdu.pojo.Course;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
//事务的使用可以在dao层，也可以在Service层，建议在Service
//@Transactional:该注解用于指定事务，
//可以用在类之前，如果用在类前，说明该类中的所有方法使用该事务
//也可以用在方法前，说明事务使用在该方法中

@Service
public class CourseService{
 
    @Autowired
    private CourseDAOImpl dao;
    
    @Transactional

    public Course getCourseById(String id) {
        return dao.getOneById(id);
    }
    
    @Transactional
    public List getCourseList() {
        return dao.getAll();
    }

    @Transactional(propagation = Propagation.REQUIRED,timeout = 10)
    public void addCourse(Course course) {
         dao.insert(course);
    }
    
    @Transactional
    public void updateCourse(Course course) {
        dao.update(course);
    }
    
    @Transactional
    public void deleteCourse(String id) {
        dao.deleteById(id);
    }
    
    @Transactional
    public List getListByPageNumberAndSize(int pageNumber, int pageSize) {
        return dao.getListByPageNumberAndSize(pageNumber, pageSize);
    }
    
}
