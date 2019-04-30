package controller;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Bean.Admin;
import Bean.Adminvo;
import service.Adminservice;




@Controller
public class Handler {
	
	@Autowired
	Adminservice s;
	
	@RequestMapping("/admin.do")
	public @ResponseBody List<Adminvo> admin()  throws Exception
	{
		
		
		return s.getalladmin();
		
		
	}
	

}
