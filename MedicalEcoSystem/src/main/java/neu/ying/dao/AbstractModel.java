/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package neu.ying.dao;

import java.lang.reflect.ParameterizedType;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author GladysWang
 */
public abstract class AbstractModel<T> {

    private Class<T> entityClass;

    public AbstractModel() {
        this.session = HibernateUtil.getSessionFactory().getCurrentSession();
        entityClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }
    protected Session session = null;
    protected Transaction tx;

    public AbstractModel(Class<T> entityClass) {
        this.entityClass = entityClass;
        this.session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<T> findAll() {
        List<T> objects = null;
        try {
            tx = session.beginTransaction();
            Query query = session.createQuery("from " + entityClass.getName());
            objects = query.list();
            tx.commit();
        } catch (HibernateException e) {
            tx.rollback();
        }
        return objects;
    }

    public void save(T obj) {
        try {
            tx = session.beginTransaction();
            session.save(obj);
            tx.commit();
        } catch (HibernateException e) {
            tx.rollback();
        }
    }

    public void update(T obj) {
        try {
            tx = session.beginTransaction();
            session.update(obj);
            tx.commit();
        } catch (HibernateException e) {
            tx.rollback();
        }
    }

    public T find(Integer id) {
        T obj = null;
        try {
            tx = session.beginTransaction();
            obj = (T) session.get(entityClass, id);
            tx.commit();
        } catch (HibernateException e) {
            tx.rollback();
        }
        return obj;
    }

    public void delete(T obj) {
        try {
            tx = session.beginTransaction();
            session.delete(obj);
            tx.commit();
        } catch (HibernateException e) {
            tx.rollback();
        }
    }

}
