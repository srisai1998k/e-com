package com.app.DAOImpl;


	
	import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
	import org.hibernate.SessionFactory;
	import org.hibernate.Transaction;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;

import com.app.DAO.RegisterDAO;
import com.app.Model.Register;
import com.app.Model.addproduct;

@Repository
public class RegisterDAOImpl implements RegisterDAO { 
	
		
		@Autowired
		SessionFactory sessionFactory;
	
		
		public Register getInfo(String username)
		{
			
			Session session = sessionFactory.openSession();
		      Transaction tx = session.getTransaction();
		      tx.begin();
		      Register uc=(Register) session.get(Register.class,username);
		      System.out.println(uc);
		      tx.commit();
		      return uc;
		}

		public void adduser(Register reg) {
			try
			{
			Session session= sessionFactory.openSession();
			Transaction tx=session.beginTransaction();
			
			session.save(reg);
		
			tx.commit();
			session.flush();
			session.close();
			}
			catch(Exception e)
			{
				System.out.println("Error"+e);
			}
			
		}

		
		public boolean checkLogin(String username) {
		
			System.out.println("In Check login");
			Session session = sessionFactory.openSession();
			boolean userFound = false;
			//Query using Hibernate Query Language
			String SQL_QUERY =" from Register where username=?";
			Query query = session.createQuery(SQL_QUERY);
			query.setParameter(0,username);
			//query.setParameter(1,password);
			List list = query.list();

			if ((list != null) && (list.size() > 0)) {
				userFound= true;
			}

			session.close();
			return userFound; 
			

		}
	

}

