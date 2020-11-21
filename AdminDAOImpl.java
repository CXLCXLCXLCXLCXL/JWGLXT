package com.qdu.dao.impl;

import com.qdu.dao.AdminDAO;
import com.qdu.dao.AdminDAO;
import com.qdu.pojo.Administrator;
import com.qdu.pojo.Administrator;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**/
@Repository
public class AdminDAOImpl implements AdminDAO{
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public void update(Administrator admin) {
        Session session = sessionFactory.getCurrentSession();
        session.update(admin);
    }

    @Override
    public Administrator getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Administrator s = (Administrator) session.get(Administrator.class, id);
        return s; 
    }
    
}
