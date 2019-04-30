package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Bean.Lbt;
import database.LbtMapper;
import util.Lbtutil;

@Service
public class Lbtservice {
	
	@Autowired
	LbtMapper lm; 
	public List<Lbt> sellbt()
	{
		return lm.sellbt();		
	}

	public void insertlbt(Lbt lbt)
	{
			
		lm.insertlbt(lbt);
	}
	public void dellbt(Lbt lbt) {
		lm.dellbt(lbt);
		
	}
	public void updatelbt(Lbtutil lbt) {
		
		lm.updatelbt(lbt);
	}
	public Lbt sellbtbyid(int id)
	{
		return lm.sellbtbyid(id);
	}
	
}
