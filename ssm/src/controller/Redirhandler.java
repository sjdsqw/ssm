package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Bean.Admin;
import Bean.Adminvo;
import service.Adminservice;

@Controller
public class Redirhandler {

	@Autowired
	Adminservice adser;
	
	@RequestMapping(value="/login.do",method = RequestMethod.POST)
	public String login(@RequestParam("username") String username,@RequestParam("password") String password,HttpSession session,HttpServletRequest request)  throws Exception
	{
		
		

		Adminvo admin = adser.seladmin(username);
		if(admin==null)
		{
			 request.setAttribute("errormessage", "用户名错误");
		}
		
		else if(admin.getPassword().equals(password))
		{
			session.setAttribute("admin", admin);
			session.setAttribute("auth", admin.getAuth());
           return "adminpage";
		}
		else {
			 request.setAttribute("errormessage", "密码错误");
			
		}
		
		
		return "login";
		
		
	}
	
	@RequestMapping("/endlogin.do")
	public String endlogin(HttpSession session)  throws Exception
	{
		session.removeAttribute("user");
		
		
		return "login";
			
		
	}
	
	
}
