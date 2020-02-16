package com.proj.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.proj.model.ModelClass;
import com.proj.service.EventClass;
import com.proj.service.EventRepository;

@RestController //A convenience annotation that is itself annotated 
public class EventController {
	@Autowired //Marks a constructor, field, setter method, or config method as to be autowired bySpring's dependency injection facilities
	private EventClass serObj;
	@RequestMapping(method=RequestMethod.POST,value="/event") //this mapping is use for collect the data from 'EditEvent' jsp page and insert data in server
	public ModelAndView addEventRecord(ModelClass objM,HttpSession session) {
		objM = serObj.addEvent(objM);
		session.setAttribute("modelobj", objM);
		ModelAndView viewObj = new ModelAndView();
		viewObj.setViewName("EditEvent.jsp");
		return viewObj;
		
	}
	@RequestMapping(value="/show") //this mapping use for all event show in home jsp page
	public ModelAndView showAllEvents(HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("event",session.getAttribute("modelobj"));
		mv.setViewName("home.jsp");
		return mv;
	}
	//@RequestMapping("/deletestudent")
	//public ModelAndView deleteStudent(@RequestParam String email)
	//{
		//System.out.println("INSIDE deleteUser Method IN CONTROLLER CLASS");
		
		//serObj.deleteEventRecord(email);
		
		//ModelAndView mv = new ModelAndView();
		//mv.addObject("msg", "RECORD DELETED");
		//mv.setViewName("home.jsp");
		//return mv;

	//}
}
