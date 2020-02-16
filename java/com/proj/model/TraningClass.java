package com.proj.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity ////Specifies that the class is an entity. This annotation is applied to the entity class
public class TraningClass implements Serializable { //The serialization interface has no methods or fieldsand serves only to identify the semantics of being serializable. 
	@Id //Specifies the primary key of an entity
	private String eventId; //training id variable
    private String traname;//training name
	private String discrp; //training Description
	private String date; //training date
	private String teachers; //training teachers name 
	private String budget; //training budget
	private String paid; //training teachers paid variable
	private String stdOutcome; //student outcome variable
	public TraningClass() { //training class constructor
		
	}
	
	public String getEventId() {
		return eventId;
	}

	public void setEventId(String eventId) {
		this.eventId = eventId;
	}

	public String getTraname() {
		return traname;
	}

	public void setTraname(String traname) {
		this.traname = traname;
	}

	public String getDiscrp() {
		return discrp;
	}
	public void setDiscrp(String discrp) {
		this.discrp = discrp;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTeachers() {
		return teachers;
	}
	public void setTeachers(String teachers) {
		this.teachers = teachers;
	}
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
	}
	public String getPaid() {
		return paid;
	}
	public void setPaid(String paid) {
		this.paid = paid;
	}
	public String getStdOutcome() {
		return stdOutcome;
	}
	public void setStdOutcome(String stdOutcome) {
		this.stdOutcome = stdOutcome;
	}
	
	

}
