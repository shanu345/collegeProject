package com.proj.service;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.model.TraningClass;


@Service //Indicates that an annotated class is a "Service,originally defined by Domain-DrivenDesign as "an operation offered as an interface that stands alone in the model, with no encapsulated state.
public class TrainingService {
	@Autowired //Marks a constructor, field, setter method, or config method as to be autowired bySpring's dependency injection facilities
	private TrainingRepository trainrepo; //'trainrepo' is EventRepository interface object
	public TraningClass trainClass(TraningClass trainobj) { //'trainobj' is traning model class object
		trainobj=trainrepo.save(trainobj);
		return trainobj;
	}
	public ArrayList<TraningClass> showAllTraining()
	{
		ArrayList<TraningClass> alltrain = new ArrayList<TraningClass>(); //'alltrain' is model class object. this object for use all model class data fatching in jsp page.
		for(TraningClass tr_obj:trainrepo.findAll()) //'tr_obj' is event model class object. this is use for find one data store in server.
		{
			alltrain.add(tr_obj);
		}
		return alltrain;
}
	public TraningClass searchByName(String traname){ //searchByName method is use for fatching the date from the server,through use of traname variable.
		TraningClass tranobj = trainrepo.findBytraname(traname);
		return tranobj;
	}
	public void deletById(String eventId){ //deletById method is use for delete the data to use eventId variable. 
		 trainrepo.deleteById(eventId);
	}
	
}
