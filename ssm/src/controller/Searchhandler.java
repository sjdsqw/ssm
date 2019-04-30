package controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Bean.Goodvo;
import service.Goodservice;

@Controller
@RequestMapping("/search/")
public class Searchhandler {
	@Autowired
	Goodservice gs;
	
	@RequestMapping("searchbyname.do")
	public String searchbyname(String name,@RequestParam(defaultValue="",required=false)Set<String> dess,String des,HttpServletRequest request)
	{
		List<Goodvo> goods = gs.selgoodbyname(name);
		if(dess==null||dess.size()==0)
		{
			
		Set<String> describes =new HashSet();
		for(Goodvo good:goods)
		{
			if(!describes.contains(good.getDescribe()))
			{
				describes.add(good.getDescribe());
			}
			
		}
		request.setAttribute("name", name);
		request.setAttribute("describes", describes);
		request.setAttribute("goods", goods);
		}
		else
		{
			
			List<Goodvo> goods2 =new ArrayList<Goodvo>();
			for(Goodvo good:goods)
			{
			   if(good.getDescribe().contains(des))
				{
				   goods2.add(good);
					   }
			}
		
			request.setAttribute("name", name);
			request.setAttribute("describes", dess);
			request.setAttribute("goods", goods2);
			
			
		}
		return "/user/searchgoods";
		
	}
	

}
