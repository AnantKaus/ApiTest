package com.osahub.entity;
import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyFactory;
import com.googlecode.objectify.ObjectifyService;
public class ObjectifySer 
{
	static
	{
		factory().register(com.osahub.entity.Details.class);
	
	}

	public static Objectify ofy()
	{
		return ObjectifyService.ofy(); 
	}
	
	public static ObjectifyFactory factory()
	{
		return ObjectifyService.factory();
	}
}
