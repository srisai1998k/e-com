package com.app.DAO;

import com.app.Model.Register;

public interface RegisterDAO 
{
void adduser(Register reg);

boolean checkLogin(String username);
}
