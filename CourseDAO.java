package com.qdu.dao;

import com.qdu.pojo.Course;
import java.util.List;
/**/
public interface CourseDAO {
    void insert(Course course);
    void deleteById(String id);
    void update(Course course);
    Course getOneById(String id);
    List<Course> getAll();
    
    List<Course> getListByPageNumberAndSize(int pageNumber, int pageSize);
    
}
