package com.qdu.dao;

import com.qdu.pojo.Professional;
import java.util.List;
/**/
public interface ProfessionalDAO {
    void insert(Professional professional);
    void deleteByName(String name);
    void update(Professional professional);
    Professional getOneByName(String name);
    List<Professional> getAll();
    List<Professional> getListByPageNumberAndSize(int pageNumber, int pageSize);
    
}
