/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.dao.ProfessionalDAO;
import com.qdu.dao.impl.ProfessionalDAOImpl;
import com.qdu.pojo.Professional;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProfessionalService{ 
    @Resource
    private ProfessionalDAOImpl professionaldao;
    
    @Transactional
    public Professional getProfessionalByName(String name) {
        return professionaldao.getOneByName(name);
    }
    
    @Transactional
    public List getProfessionalList() {
        return professionaldao.getAll();
    }

    @Transactional(propagation = Propagation.REQUIRED,timeout = 10)
    public void addProfessional(Professional professional) {
         professionaldao.insert(professional);
    }
    
    @Transactional
    public void updateProfessional(Professional professional) {
        professionaldao.update(professional);
    }
    
    @Transactional
    public void deleteProfessional(String name) {
        professionaldao.deleteByName(name);
    }
    
    @Transactional
    public List getListByPageNumberAndSize(int pageNumber, int pageSize) {
        return professionaldao.getListByPageNumberAndSize(pageNumber, pageSize);
    }

}
