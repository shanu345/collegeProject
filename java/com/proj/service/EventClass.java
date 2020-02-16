package com.proj.service;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.model.ModelClass;


@Service //Indicates that an annotated class is a "Service,originally defined by Domain-DrivenDesign as "an operation offered as an interface that stands alone in the model, with no encapsulated state
public class EventClass {
	@Autowired //Marks a constructor, field, setter method, or config method as to be autowired bySpring's dependency injection facilities
	private EventRepository event; //'event' is EventRepository interface object
	public ModelClass addEvent(ModelClass modelObj) { //'modelObj' is event model class object 
		//event.deleteAll();
		modelObj = event.save(modelObj);
		return modelObj;
	}
	public List<ModelClass> showAllEvent()
	{
		List<ModelClass> allevent = new ArrayList<ModelClass>(); //'allevent' is model class object. this object for use all model class data fatching in jsp page.
		for(ModelClass ev_obj:event.findAll()) //'ev_obj' is event model class object. this is use for find one data store in server.
		{
			allevent.add(ev_obj);
		}
		//tourrepositoryobj.findAll().forEach(alltour::add);
		return allevent ;
	}
	//public void deleteEventRecord(String email) 
	//{
		//System.out.println("INSIDE deleteStudentRecord METHOD in SERVICE CLASS");
		
		//event.deleteById(email);
	//}

}
