package com.qdu.dao;

import com.qdu.pojo.ProfessionalPlan;
import java.util.List;

public interface ProfessionalPlanDAO {
    //增
    void insert(ProfessionalPlan professionalPlan);
    //删
    void deleteById(int id);
    //改
    void update(ProfessionalPlan professionalPlan);
    //查
    ProfessionalPlan getOneById(int id);
    
    List<ProfessionalPlan> getProfessionalPlanByName(String name);
    //查所有
    List<ProfessionalPlan> getAll();
    
    List getProfessionalPlanLinkedCourse(String name);
    
    List<ProfessionalPlan> getListByPageNumberAndSize(int pageNumber, int pageSize);
    
}
