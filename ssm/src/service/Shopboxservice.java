package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Bean.Shopboxvo;
import database.ShopboxMapper;
import util.Page;

@Service
public class Shopboxservice {
	
	@Autowired
	ShopboxMapper sbm;
	

	public void insertshopbox(Shopboxvo shopbox)
	{
		sbm.insertshopbox(shopbox);
	}

	public void delshopboxbyid(int id)
	{
		sbm.delshopboxbyid(id);
	}

	public void moshopbox(Shopboxvo shopbox)
	{
		sbm.moshopbox(shopbox);
	}

	public List<Shopboxvo> showallshopbox()
	{
		return sbm.showallshopbox();
	}

	public List<Shopboxvo> showshopboxbypage(int page)
	{
		page = page * Page.size - Page.size ;
        Page p=new Page();
        p.start=page;
        return sbm.showshopboxbypage(p);
	}

	public int adselpage()
	{
		 int num=sbm.adselpage();
		 int page=num/Page.size;
		 if(num%Page.size!=0)
		 {
			 page+=1;
		 }
	
		return page;
	}

	

	public List<Shopboxvo> selshopboxbyuid(String uid)
	{
		return sbm.selshopboxbyuid(uid);
	}

	public List<Shopboxvo> selshopboxbynamebygid(int gid)
	{
		
		return sbm.selshopboxbynamebygid(gid);
	}
	
	
	public  List<Shopboxvo> selshopboxandgoodbyuid(String uid)
	{
		return sbm.selshopboxandgoodbyuid(uid);
	}

	public Shopboxvo selshopboxandgoodbyid(int id)
	{
		return sbm.selshopboxandgoodbyid(id);
	}
	

}
