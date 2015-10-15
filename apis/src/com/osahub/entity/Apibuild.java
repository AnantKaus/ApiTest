package com.osahub.entity;

import com.google.api.server.spi.config.Api;
import com.google.api.server.spi.config.ApiMethod;
import com.google.api.server.spi.config.Named;
import com.google.api.server.spi.response.NotFoundException;

import static com.osahub.entity.ObjectifySer.*;
@Api(name="detail",version="v1", description="An API to manage famous quotes")
public class Apibuild {
	@ApiMethod(name="add")
	public void add(@Named("email")String email, @Named("pass") String pass) throws NotFoundException{
		Details d = new Details(email,pass);
		ofy().save().entity(d);
	}
	@ApiMethod(name="show")
	public Details show(@Named("email")String email, @Named("pass") String pass) throws NotFoundException{
		Details d = ofy().load().type(Details.class).id(email).getValue();
		
		return d;
	}
}
