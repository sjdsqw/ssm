package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Bean.User;
import Bean.Usermessagevo;
import Bean.Uservo;
import service.Usermessageservice;
import service.Userservice;

@Controller
@RequestMapping("/user")
public class Userhandler {

	@Autowired
	Userservice us;
	@Autowired
	Usermessageservice ums;
	
	@RequestMapping("createnewuser.do")
	public String creatnewuser(@RequestParam(value="uid",required=true)String uid,String password,String password2,String name,String tel,String local)
	{
		System.out.println(uid+password+local);
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String nowdate= sdf.format(date);
		Uservo user =new Uservo();
		Usermessagevo usermessage=new Usermessagevo();
		user.setId(uid);
		user.setPassword(password);
		usermessage.setUid(uid);
		usermessage.setName(name);
		usermessage.setTel(tel);
		usermessage.setLocal(local);
		usermessage.setCreatedate(nowdate);
		us.insertuser(user);
		ums.insertusermessage(usermessage);
		
		
		
		return "/user/userlogin";	
	}
	
	
	@RequestMapping("userlogin.form")
	public String userlogin(String id,String password,HttpSession session,HttpServletRequest request)
	{
		Uservo user = us.seluser(id);
		if(user==null)
		{
			request.setAttribute("errormessage","未找到此用户");
			return "/user/userlogin.jsp";	
		}
		if(user.getPassword().equals(password))
		{
		    	session.setAttribute("user", user);
		    	return "/shelf/intomain.do";
				}
		else {
			request.setAttribute("errormessage","密码错误");
			return "/user/userlogin.jsp";	

			
		}
		

	}
	
	
	
	
}
