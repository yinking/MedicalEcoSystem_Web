package neu.ying.dao;

import java.math.BigInteger;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;

import neu.ying.entities.Drug;

public class DrugDao extends AbstractModel<Drug> {

    public DrugDao() {
    }

    public Integer findWhetherDrugExist(String str) {
        SQLQuery sqlq = null;
        BigInteger aa = null;
        try {
            tx = session.beginTransaction();
            sqlq = session.createSQLQuery("SELECT COUNT(1) FROM Drug  WHERE drugNumber=:str");
            sqlq.setString("str", str);
            aa = (BigInteger) sqlq.uniqueResult();
            System.out.println(aa + "aaaaaaaa");
            tx.commit();

        } catch (HibernateException e) {
            tx.rollback();
        }
        return aa.intValue();

    }

}