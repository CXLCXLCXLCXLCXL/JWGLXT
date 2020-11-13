package com.qdu.dao;

import com.qdu.pojo.Batch;
import java.util.List;

public interface BatchDAO {
    //增
    void insert(Batch batch);
    //删
    void deleteByName(String name);
    //改
    void update(Batch batch);
    //查
    Batch getOneByName(String name);
    //查找所有
    List<Batch> getAll();
    
    List<Batch> getListByPageNumberAndSize(int pageNumber, int pageSize);
    
}
