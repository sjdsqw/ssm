package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Bean.Disimg;
import Bean.Goodvo;
import database.GoodMapper;
import util.Middleutil;
import util.Page;

@Service
public class Goodservice {

	@Autowired
	GoodMapper gm;

	public void delgood(int id) {
		gm.delgood(id);
	}

	public void insertgood(Goodvo good) {
		gm.insertgood(good);
	}

	public void mogood(Goodvo good) {
		gm.mogood(good);
	}

	public List<Goodvo> showallgood() {
		return gm.showallgood();
	}

	public List<Goodvo> showgoodbypage(int page) {
		page = page * Page.size - Page.size ;
        Page p=new Page();
        p.start=page;
		return gm.showgoodbypage(p);
	}

	public int adselpage() {
		return gm.adselpage();
	}

	public Goodvo selgood(int id) {
		return gm.selgood(id);
	}

	public List<Goodvo> selgoodbyname(String name) {
		return gm.selgoodbyname(name);
	}

	public List<Disimg> selgooddisplayimg(int id){
		return gm.selgooddisplayimg(id);
		
	}
	public void moddisplayimgbyid(int id,String displayimg)
	{
		Middleutil util=new Middleutil();
		util.setId(id);
		util.setDisplayimg(displayimg);
		gm.moddisplayimgbyid(util);
	}
	
	public void insertdisplay(int gid,String displayimg)
	{
		Middleutil util=new Middleutil();
		util.setGid(gid);
		util.setDisplayimg(displayimg);
		gm.insertdisplay(util);
		
		
	}
	
	public void deldisplayimg(int id)
	{
		gm.deldisplayimg(id);
	}
	
}
