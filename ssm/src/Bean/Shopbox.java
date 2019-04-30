package Bean;

import java.util.List;

public class Shopbox {
	private int id;
	private int gid;
	private String uid;
	private String addtime;
	private int addnumber;
	private Goodvo good;
	
	
	public Goodvo getGood() {
		return good;
	}
	public void setGood(Goodvo good) {
		this.good = good;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int goodid) {
		this.gid = goodid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	public int getAddnumber() {
		return addnumber;
	}
	public void setAddnumber(int addnumber) {
		this.addnumber = addnumber;
	}

	
	
	
	

}
