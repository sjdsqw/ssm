package controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import Bean.Disimg;
import Bean.Goodvo;
import Bean.Lbt;
import Bean.Shelfvo;
import service.Goodservice;

@Controller
@RequestMapping("/good/")
public class Goodhandler {

	@Autowired
	Goodservice gs;

	@RequestMapping(value = "/uploadgood.do", method = RequestMethod.POST)
	public String uploadgood(@RequestParam(value="goodid",defaultValue="-500")int goodid,@RequestParam(value = "goodname", required = true) String goodname, int goodnumber,
			float goodprice, String gooddescribe, MultipartFile goodimage) throws Exception {

		
		Goodvo good =null;
		if(goodid!=-500)
		{
			good=gs.selgood(goodid);
		
		
		}
		else {
			good = new Goodvo();
		}
		good.setName(goodname);
		good.setNumber(goodnumber);
		good.setPrice(goodprice);
		good.setDescribe(gooddescribe);

		if (!goodimage.isEmpty()) {

			Date d = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String date = sdf.format(d);



			String path = "D:\\java语言程序\\pic\\" + date + "\\";
			File folder = new File(path);
			if (!folder.exists()) {
				folder.mkdirs();
			}

			String ordname = goodimage.getOriginalFilename();
			String newname = UUID.randomUUID() + ordname;
			File newFile = new File(path + newname);
			goodimage.transferTo(newFile);
			String savapath="pic\\"+date+"\\"+newname;
			good.setImg(savapath);
		}

     if(goodid==-500)
     {
		gs.insertgood(good);
     }
     else {
    	 gs.mogood(good);
    	 
     }

		return "adminpage";

	}

	@RequestMapping("showgoodsbypage.do")
	public String showgoodsbypage(@Value("1")int page, HttpServletRequest request )  throws Exception {

		int allpage = gs.adselpage();
		request.setAttribute("allpage", allpage);

		List<Goodvo> goods = gs.showgoodbypage(page);
		request.setAttribute("showgoods", goods);

		return "showgood/showgood";

	}

	@RequestMapping("showgoodsjsonbypage.do")
	public @ResponseBody List<Goodvo> showgoodsjsonbypage(int page)  throws Exception {

		List<Goodvo> goods = gs.showgoodbypage(page);

		return goods;

	}
	@RequestMapping("modgood.do")
	public String modGood(int id,HttpServletRequest  request)
	{
		
		Goodvo good = gs.selgood(id);
		request.setAttribute("modgood", good);
		
		
		return "showgood/modgood";
		
	}
	
	@RequestMapping("delgood.do")
	public String delGood(int id,HttpServletRequest  request) throws Exception
	{
		
	    gs.delgood(id);
	
		return "good/showgoodsbypage.do?page=1";
		
	}
	
	@RequestMapping("intogoodDetailed.do")
	public String intogoodDetailed(int id,HttpServletRequest request)
	{
		Goodvo good = gs.selgood(id);
		List<Disimg> disimgs = gs.selgooddisplayimg(id);
	
		
		 request.setAttribute("good", good);
	     request.setAttribute("disimgs", disimgs);
		return "user/goodDetailed";
		
		
	}
	
	@RequestMapping("moddisplayimg.do")
	public String moddisplayimg(int id,HttpServletRequest request)
	{
		List<Disimg> disimgs = gs.selgooddisplayimg(id);
		request.setAttribute("id", id);
		request.setAttribute("disimgs", disimgs);
	
		return "showgood/showdisplayimg";
		
		
	}
	
	@RequestMapping("moddisplayimg1.form")
	public String moddisplayimg1(int[] id,int gid,List<MultipartFile> disimage ) throws Exception
	{String savepath,ordname,newname,path;
		int len=id.length;
		File newFile=null,folder=null;
		for(int i=0;i<len;i++)
		{
			if(disimage.get(i).isEmpty())
			{
				continue;
			}
			
			path = "D:\\java语言程序\\pic\\display\\";
			 folder = new File(path);
			if (!folder.exists()) {
				folder.mkdirs();
			}

			 ordname = disimage.get(i).getOriginalFilename();
			 newname = UUID.randomUUID() + ordname;
			 newFile = new File(path + newname);
			disimage.get(i).transferTo(newFile);
			savepath="pic\\display\\"+newname;
 
			gs.moddisplayimgbyid(id[i], savepath);
			
			
		}
		
		
		return "showgoodsbypage.do";
				
		
		
	}
	@RequestMapping("insertdisplayimg.form")
	public String insertdisplayimg(int gid,MultipartFile disimage,HttpServletRequest request) throws Exception
	{
		String savepath,ordname,newname,path;
	

	File newFile=null,folder=null;
		

		if(disimage.isEmpty())
		{
			request.setAttribute("error", "图片为空");
			return "user/error.jsp";
		}
		
		path = "D:\\java语言程序\\pic\\display\\";
		 folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		 ordname = disimage.getOriginalFilename();
		 newname = UUID.randomUUID() + ordname;
		 newFile = new File(path + newname);
		disimage.transferTo(newFile);
		savepath="pic\\display\\"+newname;
        gs.insertdisplay(gid, savepath);
    	return "moddisplayimg.do?id="+gid;
		
	}

	
	@RequestMapping("deldisplayimg.form")
	public String deldisplayimg(int id,int gid)
	{
		gs.deldisplayimg(id);
		return "moddisplayimg.do?id="+gid;
	}
	
	
	

}
