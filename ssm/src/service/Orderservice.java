package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Bean.Ordervo;
import database.OrderMapper;
import util.Page;

@Service
public class Orderservice {

	@Autowired
	OrderMapper om;
	
	public void insertorder(Ordervo order)
	{
		om.insertorder(order);
	}

	public void delorder(int id)
	{
		om.delorder(id);
	}

	public void moorder(Ordervo order)
	{
		om.moorder(order);
	}

	public List<Ordervo> showallorder()
	{
		return om.showallorder();
	}

	public List<Ordervo> showorderbypage(int page)
	{
		page = page * Page.size - Page.size ;
        Page p=new Page();
        p.start=page;
		return om.showorderbypage(p);
		
	}

	public int adselpage()
	{    int num=om.adselpage();
		 int page=num/Page.size;
		 if(num%Page.size!=0)
		 {
			 page+=1;
		 }
	
		return page;
	}

	public List<Ordervo> selorderbyuid(String uid)
	{
		return om.selorderbyuid(uid);
		
	}

	public Ordervo selorderbyid(int id)
	{
		return om.selorderbyid(id);
		
	}
	
	
	
}
