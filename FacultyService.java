
package com.qdu.service;

import com.qdu.dao.FacultyDAO;
import com.qdu.dao.impl.FacultyDAOImpl;
import com.qdu.pojo.Faculty;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


@Service
public class FacultyService{
    @Autowired
    private FacultyDAOImpl dao;
    
    @Transactional
    public Faculty getFacultyByName(String name) {
        return dao.getOneByName(name);
    }
    
    @Transactional
    public List getFacultyList() {
        return dao.getAll();
    }

    @Transactional(propagation = Propagation.REQUIRED,timeout = 10)
    public void addFaculty(Faculty faculty) {
         dao.insert(faculty);
    }
    
    @Transactional
    public void updateFaculty(Faculty faculty) {
        dao.update(faculty);
    }
    
    @Transactional
    public void deleteFaculty(String name) {
        dao.deleteByName(name);
    }
    
    @Transactional
    public List getListByPageNumberAndSize(int pageNumber, int pageSize) {
        return dao.getListByPageNumberAndSize(pageNumber, pageSize);
    }

}
