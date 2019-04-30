package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Bean.Shelfvo;
import database.GoodMapper;
import database.ShelfMapper;
import util.Page;
@Service
public class Shelfservice {

		@Autowired
		ShelfMapper sm;

		public void delshelf(int id) {
			sm.delshelf(id);
		}

		public void insertshelf(Shelfvo shelf) {
			sm.insertshelf(shelf);
		}

		public void moshelf(Shelfvo shelf) {
			sm.moshelf(shelf);
		}

		public List<Shelfvo> showallshelf() {
			return sm.showallshelf();
		}

		public List<Shelfvo> showshelfbypage(int page) {
			page = page * Page.size - Page.size ;
	        Page p=new Page();
	        p.start=page;
			return sm.showshelfbypage(p);
		}

		public int selpage() {
			return sm.adselpage();
		}

		public Shelfvo selshelf(int id) {
			return sm.selshelf(id);
		}

		public Shelfvo selshelfbyname(String name) {
			return sm.selshelfbyname(name);
		}

	

}
