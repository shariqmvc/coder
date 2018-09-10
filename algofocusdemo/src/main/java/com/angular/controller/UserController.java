package com.angular.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.angular.implementations.UserImpl;
@Controller
public class UserController 
{
  @RequestMapping(value={"/save"}, method=RequestMethod.POST)	
  public void saveform(HttpServletRequest req, HttpServletResponse res) throws IOException
  {
	  UserImpl.save(req);
	  res.setContentType("text/html");
	  res.getWriter().write("Success");
  }
}
