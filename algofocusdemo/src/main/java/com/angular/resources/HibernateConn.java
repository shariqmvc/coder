package com.angular.resources;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateConn
{
  public static SessionFactory sf = null;
  static
  {
	  try
	  {
		  sf = new Configuration().configure().buildSessionFactory();
	  }catch(Exception exc)
	  {
	    exc.printStackTrace();	  
	  }
  }
  
  public static Session Opensession()
  {
	  return sf.openSession();
  }
}
