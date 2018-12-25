package com.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.Dao.userDao;
import com.model.Product;
import com.model.User;

public class UserDaoImpl implements userDao {

	@Autowired 
	SessionFactory sessionFactory;

	@Autowired
	public UserDaoImpl(SessionFactory sessionFactory)
	{
	super();
	this.sessionFactory= sessionFactory;
	}

	 

	public void insertUser(User user) 
	{
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	session.saveOrUpdate(user); 
	session.getTransaction().commit();
	}
	
	@SuppressWarnings("unchecked")
	public List<User> retrieve()
	{
		Session session = sessionFactory.openSession();
		
			session.beginTransaction();
			List<User> obj = session.createQuery("from User").list();
			session.getTransaction().commit();
			return obj;
			
		}
	 public User findById(String uname)
	  {

		  Session session = sessionFactory.openSession();
		  
		  User  s = null;
		  try
		  {  
			session.beginTransaction();
			s = session.get(User.class,uname);
			session.getTransaction().commit();
				  }
		  catch(Exception e)
		  {
			  session.getTransaction().rollback();
		  }
		  return s;
	  }

 
	 

}
