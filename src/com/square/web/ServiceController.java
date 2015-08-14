package com.square.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.square.dao.DaoI;
import com.square.entity.Booking;
import com.square.entity.GlobalClass;
import com.square.entity.RadioCategory;
import com.square.entity.User;
import com.square.entity.UserRequest;
import com.square.entity.Worker;


@Controller
public class ServiceController {

	
	private DaoI dao;
	
@Autowired
	public void setDao(DaoI dao) {
		this.dao = dao;
	}


	@RequestMapping(value="indexfrm.htm", method=RequestMethod.GET)
	public String indexFrm(Model model)
	{
	
		model.addAttribute("userrequest",new UserRequest());
		return "index";
	}
	@RequestMapping(value="add.htm", method=RequestMethod.GET)
	public String addEmployeeFrm(Model model)
	{
	
		model.addAttribute("user",new User());
		return "AddFrm";
	}
	
	@RequestMapping(value="viewuser.htm",method=RequestMethod.POST)
	public String viewUsers(Model model){
		List<Map<String, Object>> lst=dao.viewUsers();
		model.addAttribute("wlist",lst);
		return "ViewUsers";
	}
	
	@RequestMapping(value="addclientdetails.htm", method=RequestMethod.POST)
	public String addClientDetails(@ModelAttribute("user")User user,Model model)
	{
		System.out.println(user.getEmail());
		dao.addUserDetails(user);
		return "LoginPage";
	}
	@RequestMapping(value="addworkerfrm.htm", method=RequestMethod.GET)
	public String addWorkerForm(Model model)
	{
	
		model.addAttribute("worker",new Worker());
		return "WorkerForm";
	}
	@RequestMapping(value="addworkerdetails.htm", method=RequestMethod.POST)
	public String addWorkerDetails(@ModelAttribute("worker")Worker worker,Model model)
	{
		dao.addWorkerDetails(worker);
		return "HelloWorld";
	}
	@RequestMapping(value="loginfrm.htm", method=RequestMethod.GET)
	public String loginUserForm(Model model)
	{
		model.addAttribute("userrequest",new UserRequest());
		//model.addAttribute("worker",new Worker());
		return "LoginPage";
	}
	@RequestMapping(value="viewcat.htm",method=RequestMethod.GET)
	public String DisplaycatFrm(Model model){
		model.addAttribute("worker", new Worker());
		model.addAttribute("clist", dao.getCategories());
		return "WCatFrm";
	}
	
	@RequestMapping(value="wcat.htm",method=RequestMethod.POST)
	public String viewCatWork(@ModelAttribute("worker")Worker w,Model model){
		List<Map<String, Object>> lst=dao.viewWorkersByCategory(w.getWcategory(), w.getWsex());
		model.addAttribute("elist",lst);
		return "WCatFrm";
	}
	
	@RequestMapping(value="viewall.htm", method=RequestMethod.GET)
	public String viewAllWorkers(@ModelAttribute("worker")Worker worker,Model model)
	{
		model.addAttribute("wlist", dao.viewAllEmployees());
		return "ViewAllEmployee";
	}
	UserRequest userrequest;
	@RequestMapping(value="viewbycategory.htm", method=RequestMethod.GET)
	public String viewbycat(@ModelAttribute("userrequest")UserRequest user,Model model)
	{
		GlobalClass.city=user.getLocationid();
		model.addAttribute("radiob",new RadioCategory());
		
		
		userrequest=user;
		model.addAttribute("viewall",dao.viewByLocationAndCategory(user.getLocationid(),user.getCategory()));
		
		//System.out.println(userrequest.getCategory()+" "+ userrequest.getLocationid());
		/*model.addAttribute("sortByRating", dao.viewWorkersByRating(user.getCategory()));
		model.addAttribute("sortByExperience", dao.viewWorkersByExp(user.getCategory()));*/
		
		return "ViewUserForm";
	}	
	@RequestMapping(value="viewbycategory1.htm", method=RequestMethod.GET)
	public String viewbycat1(@ModelAttribute("radiob")RadioCategory radio, Model model)
	{

		
		String str=radio.getSortby();
		if(str.equals("rating"))
			{
			model.addAttribute("sortByRating", dao.viewWorkersByRating(userrequest.getCategory()));
				
			}
		else if(str.equals("experience")){
			model.addAttribute("sortByExperience", dao.viewWorkersByExp(userrequest.getCategory()));
			
		}
		else if(str.equals("price"))
		{
			model.addAttribute("sortByPrice", dao.viewWorkersByPrice(userrequest.getCategory()));	
		}
		else
		{
			model.addAttribute("viewall", dao.viewByLocationAndCategory(userrequest.getLocationid(),userrequest.getCategory()));
		}
		return "ViewUserForm";
		/*model.addAttribute("category", userrequest.getCategory());
		model.addAttribute("location", userrequest.getLocationid());
		//System.out.println(userrequest.getCategory()+" "+ userrequest.getLocationid());
		model.addAttribute("sortByRating", dao.viewWorkersByRating(userrequest.getCategory()));
		model.addAttribute("sortByExperience", dao.viewWorkersByExp(userrequest.getCategory()));
		*/
		//return ;
	}
	@RequestMapping(value="newuser.htm", method=RequestMethod.GET)
	public String newUserRegistration(Model model)
	{
	
		model.addAttribute("user",new User());
		return "reg";
	}
	
	@RequestMapping(value="plumberfrm.htm", method=RequestMethod.GET)
	public String newPlumberFrm(Model model)
	{
		
		model.addAttribute("plumber",new Booking());
		return "plumber";
	}
	
	@RequestMapping(value="computerfrm.htm", method=RequestMethod.GET)
	public String newComputerFrm(Model model)
	{
		
		model.addAttribute("plumber",new Booking());
		return "computer";
	}
	
	@RequestMapping(value="housefrm.htm", method=RequestMethod.GET)
	public String newHouseFrm(Model model)
	{
		
		model.addAttribute("plumber",new Booking());
		return "house";
	}
	
	@RequestMapping(value="electricalfrm.htm", method=RequestMethod.GET)
	public String newelectricalFrm(Model model)
	{
		
		model.addAttribute("plumber",new Booking());
		return "electrical";
	}
	
	@RequestMapping(value="gohome.htm", method=RequestMethod.GET)
	public String homePage(Model model)
	{
		model.addAttribute("userrequest",new UserRequest());
		
		return "index";
	}
	@RequestMapping(value="newWorkerform.htm", method=RequestMethod.GET)
	public String newWorkerForm(Model model)
	{
		//model.addAttribute("userrequest",new UserRequest());
		model.addAttribute("worker1",new Worker());
		return "WorkerForm";
	}
	
}
