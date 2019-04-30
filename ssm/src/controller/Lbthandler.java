package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import Bean.Lbt;
import service.Lbtservice;
import util.Lbtutil;

@Service
@RequestMapping("/lbt/")
public class Lbthandler {
	@Autowired
	Lbtservice ls;
	
	@RequestMapping("showlbt.do")
	public String showlbt(HttpServletRequest request)
	{
		List<Lbt> lbts = ls.sellbt();
		request.setAttribute("lbts", lbts);
		
		
		return "showlbt/showlbt";		
	}
	
	@RequestMapping("dellbt.form")
	public String dellbt(int id)
	{
		
		Lbt lbt=new Lbt();
		lbt.setId(id);
		ls.dellbt(lbt);
		return "lbt/showlbt.do";
		
	}
	@RequestMapping(value="insertlbt.form", method = RequestMethod.POST)
	public String insertlbt(String src,MultipartFile lbtimg) throws Exception
	{
		if(lbtimg.isEmpty())
		{
			return "user/error.jsp";
		}
		String path = "D:\\java语言程序\\pic\\lbt\\";
		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		String ordname = lbtimg.getOriginalFilename();
		String newname = UUID.randomUUID() + ordname;
		File newFile = new File(path + newname);
		lbtimg.transferTo(newFile);
		String savapath="pic\\lbt\\"+newname;
		
		Lbt lbt=new Lbt();
		lbt.setImg(savapath);
		lbt.setSrc(src);
		ls.insertlbt(lbt);;
		
		return "showlbt.do";
		
	}
	
	@RequestMapping("removelbt.form")
	public String removelbt(int id,HttpServletRequest request)
	{

		
		Lbt lbt=new Lbt();
		lbt.setId(id);;
		ls.dellbt(lbt);
		
		return "showlbt.do";
		
		
	}
	
	@RequestMapping("modlbt.do")
	public String modlbt(int id,HttpServletRequest request)
	{
		Lbt lbt = ls.sellbtbyid(id);
		request.setAttribute("lbt", lbt);
		
		return "showlbt/modlbt";
		
		
	}
	
	@RequestMapping("modlbt2.form")
	public String modlbt2(int id,String src,MultipartFile newlbtimg,HttpServletRequest request) throws Exception
	{
		if(newlbtimg.isEmpty())
		{
			return "lbt/showlbt.do";
		}
		String path = "D:\\java语言程序\\pic\\lbt\\";
		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		String ordname = newlbtimg.getOriginalFilename();
		String newname = UUID.randomUUID() + ordname;
		File newFile = new File(path + newname);
		newlbtimg.transferTo(newFile);
		String savapath="pic\\lbt\\"+newname;
		Lbtutil lbt=new Lbtutil();
		lbt.setOldimgid(id);
		lbt.setNewimg(savapath);
		lbt.setSrc(src);
		ls.updatelbt(lbt);
		
		return "showlbt.do";
		
		
	}
	
	

}
