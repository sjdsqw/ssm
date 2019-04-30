package database;

import java.util.List;

import Bean.Usermessagevo;
import util.Page;

public interface UsermessageMapper {
	public void insertusermessage(Usermessagevo usermessage);

	public void delusermessage(String uid);

	public void mousermessagebyuid(Usermessagevo usermessage);

	public List<Usermessagevo> showallusermessage();

	public List<Usermessagevo> showusermessagebypage(Page page);

	public int adselpage();

	public Usermessagevo selusermessagebyuid(String uid);

}
