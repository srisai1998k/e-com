package com.app.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
public class Register 
{
	
@Id	
String username;
@Column
String name;
@Column
long mobno;
@Column
String email;

@Transient
String password;

@Transient
String Confirmpassword;



public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}


public String getUsername() {
	return username;
}


public void setUsername(String username) {
	this.username = username;
}


public String getPassword() {
	return password;
}


public void setPassword(String password) {
	this.password = password;
}


public long getMobno() {
	return mobno;
}

public void setMobno(long mobno) {
	this.mobno = mobno;
}

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}

public String getConfirmPassword() {
	return password;
}


public void setConfirmPassword(String Confirmpassword) {
	this.Confirmpassword = Confirmpassword;
}



}
