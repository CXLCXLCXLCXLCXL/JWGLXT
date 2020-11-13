package com.qdu.service;

import com.qdu.dao.TeacherDAO;
import com.qdu.pojo.Teacher;
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
public class TeacherService{
 
    @Autowired
    private TeacherDAO dao;
    
    @Transactional
    public Teacher getTeacherById(String id) {
        return dao.getOneById(id);
    }
    
    @Transactional
    public List getTeacherList() {
        return dao.getAll();
    }
    
    @Transactional
    public List getTeacherByName(String name) {
        return dao.getTeacherByName(name);
    }
    
    @Transactional(propagation = Propagation.REQUIRED,timeout = 10)
    public void addTeacher(Teacher teacher) {
         dao.insert(teacher);
    }
    
    @Transactional
    public void updateTeacher(Teacher teacher) {
        dao.update(teacher);
    }
    
    @Transactional
    public void deleteTeacher(String id) {
        dao.deleteById(id);
    }
    
    @Transactional
    public List getListByPageNumberAndSize(int pageNumber, int pageSize) {
        return dao.getListByPageNumberAndSize(pageNumber, pageSize);
    }

    @Transactional
    public Teacher validateLogin(String stuId, String stuPSD) {
        Teacher s=dao.getOneById(stuId);
        if(s!=null &&s.getPassword().equals(stuPSD)){
            System.err.println("111111111111111111111111111111111111111111");
           return s;
        }else{
            System.err.println("22222222222222222222222222222222222222222");
            return null;
        }
    }
    
}
