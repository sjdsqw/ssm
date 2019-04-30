package database;

import java.util.List;

import Bean.Admin;
import Bean.Adminvo;
import util.Page;



public interface AdminMapper {

	public void deladmin(String id);
	public void insertadmin(Adminvo admin);
	public void moadmin(Adminvo admin);
	public List<Adminvo> showalladmin();
	public List<Adminvo> showadminbypage(Page p);
	public int adselpage();
	public Adminvo seladmin(String id);

}
