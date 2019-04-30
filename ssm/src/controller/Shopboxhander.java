package controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Bean.Shopboxvo;
import Bean.Uservo;
import service.Shopboxservice;

@Controller
@RequestMapping("/shopbox/")
public class Shopboxhander {
	@Autowired
	Shopboxservice sbs;
	
	
	@RequestMapping("showshopbox.do")
	public String showshopbox(HttpSession session,HttpServletRequest request)
	{
		Uservo user = (Uservo) session.getAttribute("user");
		if(user==null)
		{
			return "user/userlogin";
		}
		request.setAttribute("message", request.getAttribute("message"));
		List<Shopboxvo> shopboxs = sbs.selshopboxandgoodbyuid(user.getId());
		request.setAttribute("shopboxs", shopboxs);
	
		return "user/usershopbox";
	}
	
	@RequestMapping("delshopbox.form")
	public String delshopbox(int id)
	{
		sbs.delshopboxbyid(id);
		
		
		return "showshopbox.do";
	}
	
	@RequestMapping("addshopbox.form")
	public String addshopbox(HttpSession session, HttpServletRequest request, int goodid, int shopnumber)
	{
		Uservo user = (Uservo) session.getAttribute("user");
		if(user==null)
		{
			return "/user/userlogin.jsp" ;
		}
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now=sdf.format(date);
		Shopboxvo shopbox=new Shopboxvo();
		shopbox.setAddnumber(shopnumber);
		shopbox.setAddtime(now);
		shopbox.setGid(goodid);
		shopbox.setUid(user.getId());
		sbs.insertshopbox(shopbox);
		return "showshopbox.do";
		
	}
	

}
