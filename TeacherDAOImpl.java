package com.qdu.dao.impl;

import com.qdu.dao.TeacherDAO;
import com.qdu.dao.TeacherDAO;
import com.qdu.pojo.Teacher;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
/**/
@Repository
public class TeacherDAOImpl implements TeacherDAO{

    @Autowired
    private SessionFactory sessionFactory;
 
    @Override
    public void insert(Teacher teacher) {
        Session session = sessionFactory.getCurrentSession();
        session.save(teacher); 
    }

    @Override
    public void update(Teacher teacher) {
        Session session = sessionFactory.getCurrentSession();
        session.update(teacher);
    }

    @Override
    public void deleteById(String id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Teacher(id));

    }

    @Override
    public Teacher getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Teacher s = (Teacher) session.get(Teacher.class, id);
        return s; 
    }

    @Override
    public List<Teacher> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Teacher");
        List list = query.list();
        return list;
    }

    @Override
    public List<Teacher> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Teacher");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
//        session.close();
        return list;
    }

    @Override
    public List<Teacher> getTeacherByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Teacher where name=:name");
        query.setParameter("name", name);
        List list = query.list(); 
        return list;
    }

}
