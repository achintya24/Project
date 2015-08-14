package com.square.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.square.dao.DaoI;
import com.square.entity.Booking;
import com.square.entity.Feedback;
import com.square.entity.GlobalClass;

@Controller
public class BookingController {

	private DaoI dao;

	@Autowired
	public void setDao(DaoI dao) {
		this.dao = dao;
	}

	@RequestMapping(value = "viewbookingform.htm", method = RequestMethod.GET)
	public String viewBookingform(Model model) {
		model.addAttribute("book", new Booking());
		//System.out.println("1");
		return "AddinBooking";
	}

	@RequestMapping(value = "addinbooking.htm", method = RequestMethod.POST)
	public String addClientDetails(@ModelAttribute("book") Booking book,
			Model model) {
		book.setBook_uid(GlobalClass.userId);
		book.setBook_wid(GlobalClass.worker_id);
		book.setBook_cid(GlobalClass.cid);

		dao.addBooking(book);
		System.out.println("Added in Booking----");
		return "ThankYou";
	}
	@RequestMapping(value="bookfrm.htm", method=RequestMethod.GET)
	public String viewBookFrm(Model model)
	{
		List<Map<String, Object>> lst=dao.viewBookings();
		model.addAttribute("elist",lst);
		
		return "BookForm";
	}
	
	@RequestMapping(value = "newworker.htm", method = RequestMethod.GET)
	public String viewNewWorker(Model model) {
		//model.addAttribute("book", new Booking());
		//System.out.println("1");
		List<Map<String,Object>> lst=dao.viewAllWorker();
		model.addAttribute("elist",lst);
		return "AddNewWorker";
	}
	//originalworkerdatasend.htm
	@RequestMapping(value="feedback.htm", method=RequestMethod.GET)
	public String viewFeedbackForm(Model model)
	{
		
		model.addAttribute("feedback",new Feedback());
		return "feedback";
	}
	@RequestMapping(value = "sendfeedback.htm", method = RequestMethod.POST)
	public String addFeedbackDetails(@ModelAttribute("feedback") Feedback feedback,
			Model model) {
		feedback.setUser_id(GlobalClass.userId);
		dao.addFeedback(feedback);
		model.addAttribute("msg","Thank You For Your Feedback");
		return "feedback";
	}
	@RequestMapping(value="viewfeedback.htm", method=RequestMethod.GET)
	public String viewFeedbacks(Model model)
	{
		
		List<Map<String,Object>>lst=dao.viewAllFeedbacks();
		model.addAttribute("elist",lst);
		return "ViewFeedback";
	} 
	
}