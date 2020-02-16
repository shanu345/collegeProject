package com.proj.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity //Specifies that the class is an entity. This annotation is applied to the entity class
public class ModelClass implements Serializable { //The serialization interface has no methods or fieldsand serves only to identify the semantics of being serializable. 
	private String name; //event name variable
	@Id //Specifies the primary key of an entity
	private String date; //event date variable
	private String venue; //event venue variable/event occur place 
	private String budget; //event budget variable
	private String spek1; //event variable
	private String spek2;
	private String spek3;
	private String outcome; //expected outcome
	private String day1; //actual outcome variable
	public ModelClass() {//constructor of model class
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
	}
	public String getSpek1() {
		return spek1;
	}
	public void setSpek1(String spek1) {
		this.spek1 = spek1;
	}
	public String getSpek2() {
		return spek2;
	}
	public void setSpek2(String spek2) {
		this.spek2 = spek2;
	}
	public String getSpek3() {
		return spek3;
	}
	public void setSpek3(String spek3) {
		this.spek3 = spek3;
	}
	public String getOutcome() {
		return outcome;
	}
	public void setOutcome(String outcome) {
		this.outcome = outcome;
	}
	public String getDay1() {
		return day1;
	}
	public void setDay1(String day1) {
		this.day1 = day1;
	}

}
