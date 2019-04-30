package database;

import java.util.List;

import Bean.Shopboxvo;
import util.Page;

public interface ShopboxMapper {

	public void insertshopbox(Shopboxvo shopbox);

	public void delshopboxbyid(int id);

	public void moshopbox(Shopboxvo shopbox);

	public List<Shopboxvo> showallshopbox();

	public List<Shopboxvo> showshopboxbypage(Page page);

	public int adselpage();

	public List<Shopboxvo> selshopboxbyuid(String uid);

	public List<Shopboxvo> selshopboxbynamebygid(int gid);
	
	public  List<Shopboxvo> selshopboxandgoodbyuid(String uid);
	
	public Shopboxvo selshopboxandgoodbyid(int id);

}
