package database;

import java.util.List;

import Bean.Uservo;
import util.Page;

public interface UserMapper {
	public void insertuser(Uservo user);

	public void deluser(String id);

	public void mouser(Uservo user);

	public List<Uservo> showalluser();

	public List<Uservo> showuserbypage(Page page);

	public int adselpage();

	public Uservo seluser(String id);

}
