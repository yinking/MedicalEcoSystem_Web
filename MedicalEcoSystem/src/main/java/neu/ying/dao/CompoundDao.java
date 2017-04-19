/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package neu.ying.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;

import neu.ying.entities.Compound;

/**
 *
 * @author GladysWang
 */
public class CompoundDao extends AbstractModel<Compound> {

    public CompoundDao() {
    }

    public List<Compound> searchCompoundByName(String str) {
        List<Compound> objects = null;
        SQLQuery sqlq = null;

        try {
            tx = session.beginTransaction();
            sqlq = session.createSQLQuery("call searchCompoundByName(:str)");
            sqlq.setString("str", str);
            objects = sqlq.addEntity(Compound.class).list();
            tx.commit();
        } catch (HibernateException e) {
            tx.rollback();
        }
        return objects;
    }

    public List<Compound> searchCompoundByFomula(String str) {
        List<Compound> objects = null;
        SQLQuery sqlq = null;

        try {
            tx = session.beginTransaction();
            sqlq = session.createSQLQuery("call searchCompoundByFomula(:str)");
            sqlq.setString("str", str);
            List<Compound> list = objects = sqlq.addEntity(Compound.class).list();
            tx.commit();
        } catch (HibernateException e) {
            tx.rollback();
        }
        return objects;
    }

    public List<Compound> findCompoundById(String str) {
        SQLQuery sqlq = null;
        List<Compound> objects = null;

        try {
            tx = session.beginTransaction();
            sqlq = session.createSQLQuery("SELECT * FROM Compound  WHERE  Compound.idCompound=:str");
            sqlq.setString("str", str);
            objects = sqlq.addEntity(Compound.class).list();
            tx.commit();

        } catch (HibernateException e) {
            tx.rollback();
        }
        return objects;

    }

}
