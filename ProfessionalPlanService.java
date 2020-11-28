package com.qdu.service;

import com.qdu.dao.ProfessionalPlanDAO;
import com.qdu.dao.impl.ProfessionalPlanDAOImpl;
import com.qdu.pojo.ProfessionalPlan;
import javax.annotation.Resource; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
public class ProfessionalPlanService{
    @Resource
    private ProfessionalPlanDAOImpl professionalPlandao;
    
    @Transactional
    public ProfessionalPlan getProfessionalPlanById(int id) {
        return professionalPlandao.getOneById(id);
    }
    
    @Transactional
    public List getProfessionalPlanList() {
        return professionalPlandao.getAll();
    }

    @Transactional
    public List getProfessionalPlanByName(String name) {
        return professionalPlandao.getProfessionalPlanByName(name);
    }
    
    @Transactional
    public List getProfessionalPlanLinkedCourse(String name){
        return professionalPlandao.getProfessionalPlanLinkedCourse(name);
    }
    
    @Transactional(propagation = Propagation.REQUIRED,timeout = 10)
    public void addProfessionalPlan(ProfessionalPlan professionalPlan) {
         professionalPlandao.insert(professionalPlan);
    }
    
    @Transactional
    public void updateProfessionalPlan(ProfessionalPlan professionalPlan) {
        professionalPlandao.update(professionalPlan);
    }
    
    @Transactional
    public void deleteProfessionalPlan(int id) { 
        professionalPlandao.deleteById(id);
    }
    
    @Transactional
    public List getListByPageNumberAndSize(int pageNumber, int pageSize) {
        return professionalPlandao.getListByPageNumberAndSize(pageNumber, pageSize);
    }
    
}
