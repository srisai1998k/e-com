package com.app.DAOImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.app.DAO.addproductDAO;
import com.app.Model.Cart;
import com.app.Model.addproduct;

@Repository
public class addproductDAOImpl implements addproductDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void adproduct(addproduct ap)
	{
	
		
		try
		{
		Session session= sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		
		session.save(ap);
	
		tx.commit();
		session.flush();
		session.close();
		}
		catch(Exception e)
		{
			System.out.println("Error"+e);
		}
	}
	
	public void editProduct(addproduct editprod)
	
	{
			System.out.println("welcome");
		
	Session s=sessionFactory.openSession();
		    
	Transaction tx=s.getTransaction();
			
	tx.begin();
			
	addproduct p=(addproduct)s.get(addproduct.class,editprod.getPid());
			
	p.setQty(editprod.getQty());
			
	p.setPcost(editprod.getPcost());
			
	s.update(p);
			
	tx.commit();
			

			
	s.close();
			
		
	}

	public void deleteProduct(int delprodid)
	
	{
	Session session = sessionFactory.openSession();
	Transaction tx = session.getTransaction();
	tx.begin();
	addproduct p=(addproduct)session.get(addproduct.class,delprodid);
	session.delete(p);
	tx.commit();	      
	}
		

	
	public List<addproduct> getproduct( )
	{
		Session session = sessionFactory.openSession();
	      Transaction tx = session.getTransaction();
	       tx.begin();
	       Query query=session.createQuery("from addproduct");
	       List<addproduct> prodList=query.list();
	       tx.commit();
	      return prodList;
	     
	
	}

	@Override
	public addproduct showProduct(int pid) {
		System.out.println("qwewrtyuio");
		Session session = sessionFactory.openSession();
	      Transaction tx = session.getTransaction();
	       tx.begin();
	    addproduct p= (addproduct)session.get(addproduct.class, pid);
	    tx.commit();
	    session.flush();
	    session.close();
	      return p;
		
	}

	public void addcart(addproduct ap) {
		
		System.out.println("qwewrtyuio");

		try
		{
		Session session= sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.save("INSERT INTO Cart SELECT * FROM addproduct");
/*	Cart p= (Cart)session;
		
		p.setQty(ap.getQty());
		
		p.setPcost(ap.getPcost());
		
        p.setPdesc(ap.getPdesc());
		
		p.setPname(ap.getPname());
		
		p.setPid(ap.getPid());
		
		session.update(p);
		
		
		//session.save(ap);
		*/
	
		tx.commit();
		session.flush();
		session.close();
		}
		catch(Exception e)
		{
			System.out.println("Error"+e);
		}
		
	}
}


	
	