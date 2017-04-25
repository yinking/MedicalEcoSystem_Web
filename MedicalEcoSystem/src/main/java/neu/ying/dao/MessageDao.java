package neu.ying.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;

import neu.ying.entities.Message;

public class MessageDao extends AbstractModel<Message> {

    public MessageDao() {
    }
//    select * from Message where Message.receiver=7;

    public List<Message> getMessageByUserID(String str) {
        List<Message> objects = null;
        SQLQuery sqlq = null;

        try {
            tx = session.beginTransaction();
            sqlq = session.createSQLQuery("select * from Message where Message.receiver=(:str)");
            sqlq.setString("str", str);
            objects = sqlq.addEntity(Message.class).list();
            tx.commit();
        } catch (HibernateException e) {
            tx.rollback();
        }
        return objects;
    }
}