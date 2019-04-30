package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.HttpServletBean;
import org.springframework.web.servlet.ModelAndView;

import Bean.Goodvo;
import Bean.Lbt;
import Bean.S_Gmapper;
import Bean.Shelf;
import Bean.Shelfvo;
import service.Goodservice;
import service.Lbtservice;
import service.S_Gmapperserver;
import service.Shelfservice;
import util.shelfutil;

@Controller
@RequestMapping("/shelf/")
public class Shelfhandler {
	@Autowired
	Shelfservice ss;
	@Autowired
	Goodservice gs;
	@Autowired
	S_Gmapperserver sms;
	@Autowired
	Lbtservice ls;
	
	@Autowired
	shelfutil su;
	
	@RequestMapping("showshelf.do")
	public String showshelf(HttpServletRequest request)
	{
		
		
		 List<Shelfvo> shelfs=su.getshelf();
	     request.setAttribute("shelfs", shelfs);
		return "shelf/showshelf";
		
		
	}
	
	@RequestMapping("intomain.do")
	public String intomain(HttpServletRequest request)
	{
		
		
		 List<Shelfvo> shelfs=su.getshelf();
		 List<Lbt> lbts = ls.sellbt();
		 request.setAttribute("lbts", lbts);
	     request.setAttribute("shelfs", shelfs);
		return "user/index";
		
		
	}
	
	
	
	@RequestMapping("removegoodfromshelf.form")
	public String removegoodfromshelf(int sid,int gid,HttpServletRequest request)
	{
		sms.dels_gmapperbySidAndGid(sid, gid);	
		
		
		return "/shelf/showshelf.do";
	}
	
	
	
	@RequestMapping("displaygood.form")
	public String displaygood(int id,HttpServletRequest request)
	{
	
		Goodvo good = gs.selgood(id);
		String name=good.getDescribe();
		Shelfvo shelf= ss.selshelfbyname(name);
		if(shelf==null)
		{
			shelf=ss.selshelfbyname("其他类");
		}
		
		S_Gmapper s_gmapper=new S_Gmapper();
		s_gmapper.setG_id(good.getId());
		s_gmapper.setS_id(shelf.getId());
		sms.inserts_gmapper(s_gmapper);
	
		return "/shelf/showshelf.do";
		
		
	}
	
	@RequestMapping("insertshelf.form")
	public String insertshelf(String name,int ord,MultipartFile shelfimage,HttpServletRequest request) throws Exception
	{

	
		Shelfvo shelf=null;
		shelf=ss.selshelfbyname(name);
		if(shelf!=null)
		{
			request.setAttribute("error", "想添加的货架已经存在");
			return "/user/error.jsp";
		}
		
		
		
		String path = "D:\\java语言程序\\pic\\shelfimage\\";
		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		String ordname = shelfimage.getOriginalFilename();
		String newname = UUID.randomUUID() + ordname;
		File newFile = new File(path + newname);
		shelfimage.transferTo(newFile);
		String savapath="pic\\shelfimage\\"+newname;
	
		shelf=new Shelfvo();
		shelf.setImg(savapath);
		shelf.setOrder(ord);
		shelf.setName(name);
		ss.insertshelf(shelf);
		return "/shelf/showshelf.do";
		
	}
	@RequestMapping("removeshelf.form")
	public String removeshelf(int id)
	{
		
		ss.delshelf(id);
		
		return "/shelf/showshelf.do";
		
		
		
	}
	@RequestMapping("modshelf.do")
	public String movshelf(int id,HttpServletRequest request)
	{
	   Shelfvo shelf = ss.selshelf(id);	
	   request.setAttribute("shelf", shelf);
	
		return "shelf/modshelf";
  }
	
	@RequestMapping("uploadshelf.form")
	public String uploadshelf(int id,int ord,String name,MultipartFile shelfimage,HttpServletRequest request) throws Exception
	{
		Shelfvo shelf = ss.selshelf(id);
		if(shelf==null)
		{
			request.setAttribute("error", "货架已不存在");
			return "user/error.jsp";
			
		}
		 if(!shelfimage.isEmpty())
		 {
		String path = "D:\\java语言程序\\pic\\shelfimage\\";
		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
		}
       
		String ordname = shelfimage.getOriginalFilename();
		String newname = UUID.randomUUID() + ordname;
		File newFile = new File(path + newname);
		shelfimage.transferTo(newFile);
		String savapath="pic\\shelfimage\\"+newname;
		   shelf.setImg(savapath);
		 }
	   shelf.setName(name);
	   shelf.setOrder(ord);
	     ss.moshelf(shelf);
		return "showshelf.do";
		
	}

}
