package com.qdu.dao;

import com.qdu.pojo.Student;
import java.util.List;

/**
 * StudentDAO接口，定义对Student表的CRUD（增删改查）操作。
 */
public interface StudentDAO {
    //传入一个包含新学生信息的Student对象，插入新学生到数据库
    void insert(Student student);

    //传入一个包含更新后的学生信息的Student对象，更新学生信息到数据库
    void update(Student student);
    
//    void update(String id,String password);

    //根据学号删除单个学生
    void deleteById(String id);

    //根据学号查询单个学生
    Student getOneById(String id);

    //获取所有学生的列表
    List<Student> getAll();

    //根据班级名称获取该班级的所有学生的列表
    List<Student> getListByBatchName(String batchName);
    List<Student> getListByBatchNameAndPage(String batchName,int pageNumber, int pageSize);

    //根据页码和每页记录数量查询指定的学生列表
    List<Student> getListByPageNumberAndSize(int pageNumber, int pageSize);
    
}
