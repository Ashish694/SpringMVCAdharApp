package org.nlt.controller.services;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import org.hibernate.Query;
import org.hibernate.classic.Session;
import org.nlt.listener.DatabaseConnection;
import org.nlt.listener.Mailer;
import org.nlt.model.Users;
import org.springframework.stereotype.Service;

@Service
public class LoginServices {
	public LoginServices()
	{
		System.out.println("LOGIN SERVICES OBJECT CREATED.");
	}
	public boolean loginUserService(String email,int password) 
	{
		Users user = new Users();
		user.setEmail(email);
		user.setPassword(password);
		Session ses = DatabaseConnection.getDatabaseSession();
		ses.beginTransaction();
		Query query = ses.createQuery("from Users where email='"+email+"' and password='"+password+"' and status=1");
		List<Users> list = query.list();
		ses.getTransaction().commit();
		Iterator<Users> itr = list.iterator();
		if(itr.hasNext())
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public boolean signupUserService(String name, String email,String phone) 
	{
		Users user = new Users();
		user.setName(name);
		user.setEmail(email);
		user.setPhone(phone);
		Random r = new Random();
		int password = r.nextInt(1000000);
		user.setPassword(password);
		user.setStatus(1);
		Session ses = DatabaseConnection.getDatabaseSession();
		ses.beginTransaction();
		ses.save(user);
		ses.getTransaction().commit();
		
		String msg="New Account Created For MySpringMVCAadharApp\nUsername:"+email+"\nPassword:"+password;
		
		new Mailer().send(email, "New Signup", msg);
		return true;
	}
	public List<String> getRegisteredEmails()
	{
		List<String> emailList = new ArrayList();
		
		Session ses = DatabaseConnection.getDatabaseSession();
		ses.beginTransaction();
		Query query = ses.createQuery("from Users");
		List<Users> userList = query.list();
		for(Users user:userList)
		{
			emailList.add(user.getEmail());
		}
		
		ses.getTransaction().commit();
		
		return emailList;
	}
}
