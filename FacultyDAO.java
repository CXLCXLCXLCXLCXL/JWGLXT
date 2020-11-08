/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import com.qdu.pojo.Faculty;
import java.util.List;

/**
 *
 * @author master
 */
public interface FacultyDAO {
        //传入一个包含新学生信息的Faculty对象，插入新学生到数据库
    void insert(Faculty faculty);

    //传入一个包含更新后的学生信息的Faculty对象，更新学生信息到数据库
    void update(Faculty faculty);

    //根据学号删除单个学生
    void deleteByName(String name);

    //根据学号查询单个学生
    Faculty getOneByName(String name);

    //获取所有学生的列表
    List<Faculty> getAll();

    //根据页码和每页记录数量查询指定的学生列表
    List<Faculty> getListByPageNumberAndSize(int pageNumber, int pageSize);
}
