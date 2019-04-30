package util;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import Bean.Goodvo;
import Bean.S_Gmapper;
import Bean.Shelfvo;
import service.Goodservice;
import service.S_Gmapperserver;
import service.Shelfservice;

@Service
public class shelfutil {
	@Autowired
	Shelfservice ss;
	@Autowired
	Goodservice gs;
	@Autowired
	S_Gmapperserver sms;
	
	public List<Shelfvo> getshelf()
	{
		
		Goodvo good;
		List<Goodvo> goods;
		 List<S_Gmapper> s_gmappers;
		 List<Shelfvo> shelfs=new ArrayList<>();
	  List<Shelfvo> getshelfs = ss.showallshelf();
	  for(Shelfvo shelf:getshelfs)
	  {  
		  goods=new ArrayList<Goodvo>();
		   s_gmappers = sms.sels_gmapperbysid(shelf.getId());
		   for(S_Gmapper s_gmapper:s_gmappers)
		   {
			 good= gs.selgood(s_gmapper.getG_id());
			 goods.add(good);
		   
		   }	
		   shelf.setGoods(goods);
		   shelfs.add(shelf);
		  
	  }
	  
	  return shelfs;
	}

}
