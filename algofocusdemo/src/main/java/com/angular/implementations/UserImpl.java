package com.angular.implementations;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

public class UserImpl
{
  public static void save(HttpServletRequest req)
  {
	  String name = req.getParameter("name");
	  String email = req.getParameter("email");
	  String dob = req.getParameter("dob");
	  String contact = req.getParameter("contact");
	  
	  if(UserImpl.testnumber(contact))
	  {
		  System.out.println("Form Successfully saved");
	  }
	  else
	  {
		  System.out.println("Contact number is invalid");
	  }
  }
  
  public static boolean testnumber(String number)
  {
	  Pattern pattern = Pattern.compile("\\d{10}");
	  Matcher matcher = pattern.matcher(number);
	  
	  if(matcher.matches())
	  {
		  return true;
	  }
	  return false;
  }
  
}
