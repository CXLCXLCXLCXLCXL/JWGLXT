package com.qdu.dao;

import com.qdu.pojo.Professional;
import java.util.List;

public interface ProfessionalDAO {
    //增
    void insert(Professional professional);
    //删
    void deleteByName(String name);
    //改
    void update(Professional professional);
    //查
    Professional getOneByName(String name);
    //查所有
    List<Professional> getAll();
    
    List<Professional> getListByPageNumberAndSize(int pageNumber, int pageSize);
    
}
