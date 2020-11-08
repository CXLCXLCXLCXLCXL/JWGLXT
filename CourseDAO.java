package com.qdu.dao;

import com.qdu.pojo.Course;
import java.util.List;

public interface CourseDAO {
    //增
    void insert(Course course);
    //删
    void deleteById(String id);
    //改
    void update(Course course);
    //查
    Course getOneById(String id);
    //查所有
    List<Course> getAll();
    
    List<Course> getListByPageNumberAndSize(int pageNumber, int pageSize);
    
}
