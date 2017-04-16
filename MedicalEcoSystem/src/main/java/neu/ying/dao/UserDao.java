/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package neu.ying.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;

import neu.ying.entities.DoctorEnterpriseInfo;
import neu.ying.entities.User;

/**
 *
 * @author GladysWang
 */
public class UserDao extends AbstractModel<User> {

	public UserDao() {
	}

	public static User user = null;

	public static User getUser() {
		return user;
	}

	public static void setUser(User user) {
		UserDao.user = user;
	}

	public List<User> searchUserByIdEnterprise(String str) {
		List<User> objects = null;
		SQLQuery sqlq = null;

		try {
			tx = session.beginTransaction();
			sqlq = session.createSQLQuery("select * from User where idEnterprise=(:str)");
			sqlq.setString("str", str);
			objects = sqlq.addEntity(User.class).list();
			tx.commit();
		} catch (HibernateException e) {
			tx.rollback();
		}
		return objects;
	}

	public String getEnterpriseNameById(String str) {
		String name = null;
		SQLQuery sqlq = null;

		try {
			tx = session.beginTransaction();
			sqlq = session.createSQLQuery("select name from Enterprise where idEnterprise=(:str)");
			sqlq.setString("str", str);
			name = (String) sqlq.uniqueResult();
			tx.commit();
		} catch (HibernateException e) {
			tx.rollback();
		}
		return name;
	}

	//
	// drop procedure if exists joinDoctorUserEnterprise;
	// DELIMITER $$
	// CREATE PROCEDURE joinDoctorUserEnterprise( )
	// BEGIN
	// select u.idUser as id,u.username as username, e.name as enterprise
	// from User u join Enterprise e on u.idEnterprise=e.idEnterprise where
	// u.role="Doctor";
	// END $$
	// DELIMITER ;
	public List<DoctorEnterpriseInfo> joinDoctorUserEnterprise() {
		List<DoctorEnterpriseInfo> objects = null;
		SQLQuery sqlq = null;

		try {
			tx = session.beginTransaction();
			sqlq = session.createSQLQuery("call joinDoctorUserEnterprise()");
			objects = sqlq.setResultTransformer(Transformers.aliasToBean(DoctorEnterpriseInfo.class)).list();
			tx.commit();
		} catch (HibernateException e) {
			tx.rollback();
		}
		return objects;
	}

	public Boolean authenticate(String username, String password) {
		SQLQuery sqlq = null;
		System.out.println("aaaaaaaaaaa");

		try {
			tx = session.beginTransaction();
			sqlq = session.createSQLQuery(
					"SELECT * FROM User WHERE User.username = (:username) AND User.password = (:password)");
			sqlq.setString("username", username);
			sqlq.setString("password", password);

			user = (User) sqlq.addEntity(User.class).uniqueResult();

			tx.commit();
		} catch (HibernateException e) {
			System.out.println(e.getMessage());
			tx.rollback();
		}
		if (user == null) {
			return false;
		} else {
			return true;

		}
	}

}
