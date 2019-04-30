package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Bean.Admin;
import Bean.Adminvo;
import Bean.Goodvo;
import service.Adminservice;

@Controller
@RequestMapping("/admin/")
public class Adminhandler {

	@Autowired
	Adminservice ad;
	

	
	
	
	@RequestMapping("showadminsbypage.do")
	public String showadminsbypage(@Value("1")int page, HttpServletRequest request)  throws Exception {

        
		List<Adminvo> admins = ad.showadminbypage(page);
		request.setAttribute("showadmins", admins);

		return "showadmin/showadmin";

	}

	@RequestMapping("showadminsjsonbypage.do")
	public @ResponseBody List<Adminvo> showadminsjsonbypage(int page)  throws Exception {

		List<Adminvo> admins = ad.showadminbypage(page);

		return admins;

	}
	@RequestMapping("modadmin.do")
	public String modadmin(String id,HttpServletRequest  request)
	{
	
		Adminvo admin = ad.seladmin(id);
		request.setAttribute("admin",admin); 
		
		return "showadmin/modadmin";
		
	}
	
	@RequestMapping("deladmin.do")
	public String deladmin(String id,HttpServletRequest  request) throws Exception
	{
		
	    ad.deladmin(id);
	
		return "admin/showadminsbypage.do?page=1";
		
	}
	
	@RequestMapping("uploadadmin.do")
	public String uploadadmin(String id,String password1,HttpServletRequest  request) throws Exception
	{
		Adminvo admin=null;
		admin=ad.seladmin(id.trim());
		if(admin!=null)
		{
			request.setAttribute("uploadadminerror", "用户名已存在");
			return "showadmin/uploadadmin";
		}
		admin=new Adminvo();
		admin.setId(id.trim());
		admin.setPassword(password1.trim());
		admin.setAuth("2");
		ad.insertadmin(admin);
	   
		return "admin/showadminsbypage.do?page=1";
		
	}
	
	@RequestMapping("modadmin2.do")
	public String modadmin2(String id,String password1,String auth,HttpServletRequest  request) throws Exception
	{
		Adminvo admin=null;
		admin=ad.seladmin(id.trim());
		if(admin==null)
		{
			request.setAttribute("error", "未查到此用户");
			return "error/showerror";
		}		
		admin.setId(id.trim());
		admin.setPassword(password1.trim());
		admin.setAuth(auth);
		ad.moadmin(admin);
	   
		return "admin/showadminsbypage.do?page=1";
		
	}

	
}
