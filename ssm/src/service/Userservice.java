package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Bean.Uservo;
import database.UserMapper;
import util.Page;

@Service
public class Userservice {

	@Autowired
	UserMapper um;
	
	public void insertuser(Uservo user)
	{
		um.insertuser(user);
	}

	public void deluser(String id)
	{
		um.deluser(id);
	}

	public void mouser(Uservo user)
	{
		um.mouser(user);
	}

	public List<Uservo> showalluser()
	{
		return um.showalluser();
	}

	public List<Uservo> showuserbypage(int page)
	{
		page = page * Page.size - Page.size ;
        Page p=new Page();
        p.start=page;
		return um.showuserbypage(p);
	}

	public int adselpage()
	{
		return um.adselpage();
	}

	public Uservo seluser(String id)
	{
		return um.seluser(id);
	}
	
}
