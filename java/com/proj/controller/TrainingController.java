package com.proj.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.proj.model.TraningClass;
import com.proj.service.TrainingService;


@RestController //A convenience annotation that is itself annotated 
public class TrainingController {
	@Autowired //Marks a constructor, field, setter method, or config method as to be autowired bySpring's dependency injection facilities
	private TrainingService trainser; //'trainser' is the Training service class object
	@RequestMapping(method=RequestMethod.POST,value="/training") //this mapping is use for collect the data from 'InfoTraning' jsp page and insert data in server
	public ModelAndView addtraining(TraningClass tranobj) {
	tranobj=trainser.trainClass(tranobj);
	ModelAndView mObj = new ModelAndView();
	mObj.addObject("regsuccessmsg", "SUCCESSFULL SEND");
	mObj.setViewName("EditTraning.jsp");
	return mObj;
	}
	@RequestMapping(value="/trainInfo") //this mapping use for all event show in InfoTrain jsp page
	public ModelAndView showAllTours(HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		ArrayList<TraningClass> event=trainser.showAllTraining();
		session.setAttribute("event",event);
		mv.addObject("event", event);
		mv.setViewName("InfoTrain.jsp");
		return mv;
	}
	@RequestMapping("/trainning") //this mapping is use for search one data from all training data in a server to use the 'traname' variable.or 'traname' is training name model class variable.
	public ModelAndView searchAllEvent(@RequestParam String traname,HttpSession session) {
		TraningClass traobj = trainser.searchByName(traname);
		ModelAndView mv = new ModelAndView();
		//ArrayList<TraningClass> event=(ArrayList<TraningClass>)session.getAttribute("event");
		//mv.addObject("event", event);
		//TraningClass traobj1 = new TraningClass();
		if (traobj.getTraname() != null)
		{
			mv.addObject("stinfo",traobj);	
		}
		else
		{
			mv.addObject("msg", "INVALID TRAINING NAME");
		}
		
		mv.setViewName("EditTraning.jsp");
		
		return mv;
		
	}
	@RequestMapping("/deleteEvent")// this mapping and method is use for delete the training data from data base.delete by use 'eventId' variable.
	public ModelAndView deleteStudent(@RequestParam String eventId)
	{
		trainser.deletById(eventId);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "RECORD DELETED");
		mv.setViewName("EditTraning.jsp");
		return mv;
	}
}
