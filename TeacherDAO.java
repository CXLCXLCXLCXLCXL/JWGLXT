package com.qdu.dao;

import com.qdu.pojo.Teacher;
import java.util.List;

public interface TeacherDAO {
    //增
    void insert(Teacher teacher);
    //删
    void deleteById(String name);
    //改
    void update(Teacher teacher);
    //查
    Teacher getOneById(String id);
    List<Teacher> getTeacherByName(String name);
    //查所有
    List<Teacher> getAll();
    
    List<Teacher> getListByPageNumberAndSize(int pageNumber, int pageSize);
    
}
