package com.app.DAO;

import java.util.List;

import org.springframework.stereotype.Service;

import com.app.Model.Cart;
import com.app.Model.addproduct;


@Service
public interface addproductDAO {
	
	void editProduct(addproduct ap);
	void deleteProduct(int i);
	 List<addproduct> getproduct();
	void adproduct(addproduct ap);
	addproduct showProduct(int pid);
	
	void addcart(addproduct p);
	
	
	
}
