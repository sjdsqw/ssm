package database;

import java.util.List;

import Bean.Disimg;
import Bean.Good;
import Bean.Goodvo;
import util.Middleutil;
import util.Page;

public interface GoodMapper {

	public void delgood(int id);
	public void insertgood(Goodvo good);
	public void mogood(Goodvo good);
	public List<Goodvo> showallgood();
	public List<Goodvo> showgoodbypage(Page p);
	public int adselpage();
	public Goodvo selgood(int id);
	public List<Goodvo> selgoodbyname(String name);
	public List<Disimg> selgooddisplayimg(int id);
	public void moddisplayimgbyid(Middleutil util);
	public void insertdisplay(Middleutil util);
	public void deldisplayimg(int id);
}
