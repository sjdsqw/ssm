package database;

import java.util.List;

import Bean.S_Gmapper;
import util.Middleutil;
import util.Page;

public interface S_GmapperMapper {
	public void dels_gmapper(int id);
	public void dels_gmapperbySidAndGid(Middleutil util);
	public void inserts_gmapper(S_Gmapper s_gmapper);
	public void mos_gmapper(S_Gmapper s_gmapper);
	public List<S_Gmapper> showalls_gmapper();
	public List<S_Gmapper> shows_gmapperbypage(Page p);
	public int adselpage();
	public S_Gmapper sels_gmapper(int id);
	public List<S_Gmapper> sels_gmapperbysid(int id);
	
}
