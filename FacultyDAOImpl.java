/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao.impl;

import com.qdu.dao.FacultyDAO;
import com.qdu.pojo.Faculty;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FacultyDAOImpl implements FacultyDAO{
      @Autowired
    private SessionFactory sessionFactory;
    //DI：setter和构造方法   自动装配
//    getCurrentSession()在事务提交或者回滚之后会自动关闭，不需要手动关闭；
//    openSession()每次都需要手动关闭，如果使用openSesion没有手动关闭，就会导致连接池溢出，导致程序出现异常；
//      openSession()每次创建一个新的session对象而getCurrentSession()则使用现有的session对象
//注：在一个应用程序中，如果dao层使用Spring的Hibernate模板，通过Spring来控制session的生命周期，
//那么建议首选使用getCurrentSession()    
 
    @Override
    public void insert(Faculty faculty) {
        Session session = sessionFactory.getCurrentSession();
        session.save(faculty); 
    }

    @Override
    public void update(Faculty faculty) {
        Session session = sessionFactory.getCurrentSession();
        session.update(faculty);
    }


    @Override
    public List<Faculty> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Faculty");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
//        session.close();
        return list;
    }

    @Override
    public void deleteByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Faculty(name));
    }

    @Override
    public Faculty getOneByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        Faculty s = (Faculty) session.get(Faculty.class, name);
        return s; 
    }

    @Override
    public List<Faculty> getAll() { 
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Faculty");
        List list = query.list();
        return list;
    }
}
