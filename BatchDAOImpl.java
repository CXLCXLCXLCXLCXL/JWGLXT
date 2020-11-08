package com.qdu.dao.impl;

import com.qdu.dao.BatchDAO;
import com.qdu.dao.BatchDAO;
import com.qdu.pojo.Batch;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BatchDAOImpl implements BatchDAO{

    @Autowired
    private SessionFactory sessionFactory;
 
    @Override
    public void insert(Batch batch) {
        Session session = sessionFactory.getCurrentSession();
        session.save(batch); 
    }

    @Override
    public void update(Batch batch) {
        Session session = sessionFactory.getCurrentSession();
        session.update(batch);
    }

    @Override
    public List<Batch> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Batch");
        List list = query.list();
        return list;
    }

    @Override
    public void deleteByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Batch(name));
    }

    @Override
    public Batch getOneByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        Batch s = (Batch) session.get(Batch.class, name);
        return s;
    }
    @Override
    public List<Batch> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Batch");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
        return list;
    }
}
