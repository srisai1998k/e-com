package com.app.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cart {
	@Id 
	int pid;		
	@Column	
	String pname;
	@Column	
	String qty;
	@Column	
	String pdesc;
	@Column	
	String pcost;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getQty() {
		return qty;
	}
	public void setQty(String qty) {
		this.qty = qty;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public String getPcost() {
		return pcost;
	}
	public void setPcost(String pcost) {
		this.pcost = pcost;
	}
}
