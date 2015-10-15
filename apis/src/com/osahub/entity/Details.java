package com.osahub.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

 



@Entity
public class Details {
 @Id String emial;
 String pass;


public String getEmial() {
	return emial;
}


public void setEmial(String emial) {
	this.emial = emial;
}


public String getPass() {
	return pass;
}


public void setPass(String pass) {
	this.pass = pass;
}


public Details() {
	super();
	// TODO Auto-generated constructor stub
}


public Details(String emial, String pass) {
	super();
	this.emial = emial;
	this.pass = pass;
}

}
