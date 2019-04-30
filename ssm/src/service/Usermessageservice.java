package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Bean.Usermessagevo;
import database.UsermessageMapper;
import util.Page;

@Service
public class Usermessageservice {

	@Autowired
	UsermessageMapper umm;
	public void insertusermessage(Usermessagevo usermessage)
	{
		umm.insertusermessage(usermessage);
	}

	public void delusermessage(String uid)
	{
		umm.delusermessage(uid);
	}

	public void mousermessagebyuid(Usermessagevo usermessage)
	{
		
		umm.mousermessagebyuid(usermessage);
	}

	public List<Usermessagevo> showallusermessage()
	{
		
		return umm.showallusermessage();
	}

	public List<Usermessagevo> showusermessagebypage(int page)
	{
		page = page * Page.size - Page.size ;
        Page p=new Page();
        p.start=page;
		return umm.showusermessagebypage(p);
	}

	public int adselpage()
	{
		return umm.adselpage();
	}

	public Usermessagevo selusermessagebyuid(String uid)
	{
		return umm.selusermessagebyuid(uid);
	}
}
