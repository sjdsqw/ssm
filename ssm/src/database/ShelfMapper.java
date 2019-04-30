package database;

import java.util.List;

import Bean.Goodvo;
import Bean.Shelf;
import Bean.Shelfvo;
import util.Page;

public interface ShelfMapper {

		public void delshelf(int id);
		public void insertshelf(Shelfvo shelf);
		public void moshelf(Shelfvo shelf);
		public List<Shelfvo> showallshelf();
		public List<Shelfvo> showshelfbypage(Page p);
		public int adselpage();
		public Shelfvo selshelf(int id);
		public Shelfvo selshelfbyname(String name);
		
	

}
