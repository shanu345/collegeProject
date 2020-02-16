package com.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //Indicates that an annotated class is a "Controller"
public class MenuController {
	@RequestMapping("/") //MAPPING WITH SHOW ALL EVENT JSP PAGE USE OF THIS (/) TO HELP CONTROLLER CLASS
	public String openIndexPage() {
		return("home.jsp");
	}
	@RequestMapping("/event") //MAPPING WITH EDIT EVENT JSP PAGE USE OF THIS (/event) TO HELP CONTROLLER CLASS
	public String openEditpage() {
		return("EditEvent.jsp");
	}
	@RequestMapping("/edit") //MAPPING WITH EDIT TRANING JSP PAGE USE OF THIS (/edit) TO HELP CONTROLLER CLASS
	public String openTrainEditPage() {
		return "EditTraning.jsp";
	}
	//@RequestMapping("/train")
	//public String openEditPage() {
		//return "home.jsp";
	//}
	

}
