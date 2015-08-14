package com.square.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.square.dao.DaoI;



@Controller
public class AdminController {
	@SuppressWarnings("unused")
	private DaoI dao;

	@Autowired
	public void setDao(DaoI dao) {
		this.dao = dao;
	}
	
	
	@RequestMapping(value="admin.htm", method=RequestMethod.GET)
	public String homePage(Model model)
	{		
		return "AdminIndex";
	}
}
