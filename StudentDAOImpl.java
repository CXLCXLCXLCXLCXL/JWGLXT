package com.qdu.dao.impl;

import com.qdu.dao.StudentDAO;
import com.qdu.dao.StudentDAO;
import com.qdu.pojo.Student;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDAOImpl implements StudentDAO{

    @Autowired
    private SessionFactory sessionFactory;
    //DI：setter和构造方法   自动装配
//    getCurrentSession()在事务提交或者回滚之后会自动关闭，不需要手动关闭；
//    openSession()每次都需要手动关闭，如果使用openSesion没有手动关闭，就会导致连接池溢出，导致程序出现异常；
//      openSession()每次创建一个新的session对象而getCurrentSession()则使用现有的session对象
//注：在一个应用程序中，如果dao层使用Spring的Hibernate模板，通过Spring来控制session的生命周期，
//那么建议首选使用getCurrentSession()    
 
    @Override
    public void insert(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.save(student); 
    }

    @Override
    public void update(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.update(student);
    }

    @Override
    public void deleteById(String id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Student(id));

    }

    @Override
    public Student getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Student s = (Student) session.get(Student.class, id);
        return s; 
    }

    @Override
    public List<Student> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Student");
        List list = query.list();
        return list;
    }

    @Override
    public List<Student> getListByBatchName(String batchName) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Student where batch=:batch");
        query.setParameter("batch", batchName);
        List list = query.list(); 
        return list;
    }

    @Override
    public List<Student> getListByBatchNameAndPage(String batchName,int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Student where batch=:batch");
        query.setParameter("batch", batchName);
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
        return list;
    }
    
    @Override
    public List<Student> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Student");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
//        session.close();
        return list;
    }
  
}
