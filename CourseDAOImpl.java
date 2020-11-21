package com.qdu.dao.impl;

import com.qdu.dao.CourseDAO;
import com.qdu.dao.CourseDAO;
import com.qdu.pojo.Course;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

/**/

@Repository
public class CourseDAOImpl implements CourseDAO{

    @Autowired
    private SessionFactory sessionFactory;
 
    @Override
    public void insert(Course course) {
        Session session = sessionFactory.getCurrentSession();
        session.save(course); 
    }

    @Override
    public void update(Course course) {
        Session session = sessionFactory.getCurrentSession();
        session.update(course);
    }

    @Override
    public List<Course> getAll() {
        System.err.println(sessionFactory==null);
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Course");
        List list = query.list();
        return list;
    }

    @Override
    public void deleteById(String id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Course(id));
    }

    @Override
    public Course getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Course s = (Course) session.get(Course.class, id);
        return s;
    }
    @Override
    public List<Course> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Course");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
        return list;
    }
}
