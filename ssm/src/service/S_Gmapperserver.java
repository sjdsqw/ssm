package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Bean.S_Gmapper;
import database.S_GmapperMapper;
import util.Middleutil;
import util.Page;
@Service
public class S_Gmapperserver {
	@Autowired
	S_GmapperMapper sm;

	public void dels_gmapper(int id) {
		sm.dels_gmapper(id);
	}

	public void inserts_gmapper(S_Gmapper s_gmapper) {
		sm.inserts_gmapper(s_gmapper);
	}

	public void mos_gmapper(S_Gmapper s_gmapper) {
		sm.mos_gmapper(s_gmapper);
	}

	public List<S_Gmapper> showalls_gmapper() {
		return sm.showalls_gmapper();
	}

	public List<S_Gmapper> shows_gmapperbypage(int page) {
		page = page * Page.size - Page.size ;
        Page p=new Page();
        p.start=page;
		return sm.shows_gmapperbypage(p);
	}

	public int selpage() {
		return sm.adselpage();
	}

	public S_Gmapper sels_gmapper(int id) {
		return sm.sels_gmapper(id);
	}

	public List<S_Gmapper> sels_gmapperbysid(int id) {
		return sm.sels_gmapperbysid(id);
	}
	public void dels_gmapperbySidAndGid(int sid,int gid)
	{
		Middleutil util=new Middleutil();
		util.setSid(sid);
		util.setGid(gid);
		sm.dels_gmapperbySidAndGid(util);
	}


}
