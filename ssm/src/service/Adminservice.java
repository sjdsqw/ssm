package service;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Bean.Admin;
import Bean.Adminvo;
import Bean.Goodvo;
import database.AdminMapper;
import util.Page;


@Service
public class Adminservice {

    @Resource
	AdminMapper ad;
	
	public List<Adminvo> getalladmin()  throws Exception
	{
		return ad.showalladmin();
	}
	public Adminvo seladmin(String id)
	{
		return ad.seladmin(id);
		
	}
	public List<Adminvo> showadminbypage(int page)  throws Exception {
		page = page * Page.size - Page.size ;
        Page p=new Page();
        p.start=page;
		return ad.showadminbypage(p);
	}
	public void deladmin(String id)  throws Exception {
		ad.deladmin(id);
	}

	public void insertadmin(Adminvo admin)  throws Exception {
		ad.insertadmin(admin);
	}

	public void moadmin(Adminvo admin)  throws Exception {
		ad.moadmin(admin);
	}

	public List<Adminvo> showallgadmin()  throws Exception {
		return ad.showalladmin();
	}

	
}
