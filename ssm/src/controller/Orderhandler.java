package controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Bean.Goodvo;
import Bean.Orderdetailvo;
import Bean.Ordervo;
import Bean.Shopboxvo;
import Bean.User;
import Bean.Usermessagevo;
import Bean.Uservo;
import service.Goodservice;
import service.Orderdetailservice;
import service.Orderservice;
import service.Shopboxservice;
import service.Usermessageservice;

@Controller
@RequestMapping("/order/")
public class Orderhandler {

	@Autowired
	Goodservice gs;
	@Autowired
	Usermessageservice ums;
	@Autowired
	Orderservice os;
	@Autowired
	Orderdetailservice ods;
	@Autowired
	Shopboxservice sbs;

	@RequestMapping("confirmorder.do")
	public String confirmorder(HttpSession session, HttpServletRequest request, int goodid, int shopnumber) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "/user/userlogin";
		}
		Usermessagevo usermessage = ums.selusermessagebyuid(user.getId());
		Goodvo good = gs.selgood(goodid);
		good.setShopnumber(shopnumber);
		List<Goodvo> shopgoods = new ArrayList<Goodvo>();
		shopgoods.add(good);

		request.setAttribute("shopgoods", shopgoods);
		request.setAttribute("usermessage", usermessage);

		return "/user/confirmorder";

	}
	
	@RequestMapping("confirmorderbyshopbox.form")
	public String confirmorderbyshopbox(Integer[] shopboxsid,HttpSession session,HttpServletRequest request)
	{
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "/user/userlogin.jsp";
		}
		
		if(shopboxsid==null)
		{
			request.setAttribute("message", "请选择一件及以上商品");
			return "/user/error.jsp";
		}
		Usermessagevo usermessage = ums.selusermessagebyuid(user.getId());
		List<Goodvo> shopgoods = new ArrayList<Goodvo>();
		for(int i=0;i<shopboxsid.length;i++)
		{
			  Shopboxvo shopbox = sbs.selshopboxandgoodbyid(shopboxsid[i]); 
			  shopbox.getGood().setShopnumber(shopbox.getAddnumber());
			  shopgoods.add(shopbox.getGood());
			
		}
		request.setAttribute("shopgoods", shopgoods);
		request.setAttribute("usermessage", usermessage);
		
		
		return "/user/confirmorder.jsp";
		
	}
	

	@RequestMapping("submitorder.form")
	public String submitorder(Ordervo getorder, String local, String tel, int paystyle, String lmessage,
			HttpSession session, HttpServletRequest request) {
		if (paystyle != 1) {
			request.setAttribute("errormessage", "未开通此支付方式");
			return "user/error.jsp";

		}
		List<Goodvo> shopgoods = getorder.getGoods();
		Uservo user = (Uservo) session.getAttribute("user");
		Ordervo order = new Ordervo();
		order.setTel(tel);
		order.setLmessage(lmessage);
		order.setLocal(local);
		order.setUid(user.getId());
		Date date = new Date();
		SimpleDateFormat sdm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String nowdate = sdm.format(date);
		order.setTime(nowdate);
		order.setStatus("待收货");

		int nownumber = 0;
		float allprice = 0;
		for (Goodvo good : shopgoods) {

			allprice += good.getPrice() * good.getShopnumber();

		}
		order.setPrice(allprice);
		os.insertorder(order);
		for (Goodvo good : shopgoods) {

			Orderdetailvo od = new Orderdetailvo();
			od.setOid(order.getId());
			od.setGid(good.getId());
			od.setNumber(good.getShopnumber());
			ods.insertorderdetail(od);
			nownumber = good.getNumber();
			nownumber = nownumber - good.getShopnumber();
			good.setNumber(nownumber);
			gs.mogood(good);
		}
         System.out.println(order.getId());
		return "intoorder.do";

	}
	
	@RequestMapping("intoorder.do")
	public String intoorder(HttpSession session,HttpServletRequest request)
	{
		Uservo user = (Uservo) session.getAttribute("user");
		if(user==null)
		{
			return "user/userlogin";
		}
		
		List<Ordervo> orders = os.selorderbyuid(user.getId());
		List<Ordervo> orders2 = new LinkedList<Ordervo>(); 
		for(Ordervo order:orders)
		{
			List<Goodvo> goodsvo = new LinkedList<Goodvo>();
			order.setGoods(goodsvo);
			
			List<Orderdetailvo> orderdetils = ods.selorderdetailbyoid(order.getId());
			for(Orderdetailvo orderdetail:orderdetils )
			{
				Goodvo good = gs.selgood(orderdetail.getGid());
				good.setShopnumber(orderdetail.getNumber());
				 order.getGoods().add(good);
				 
				
			}
			
			orders2.add(order);
			
			
		}
		request.setAttribute("orders", orders2);
		
		return "/user/userorder";
		
	}
	
	
	@RequestMapping("showorder.do")
	public String showorder(int page,HttpServletRequest request)
	{
	    List<Ordervo> orders = os.showorderbypage(page);
	    List<Ordervo> useorders = new LinkedList<Ordervo>();
	    for(Ordervo order : orders)
	    {
	    	order.setGoods(new ArrayList<Goodvo>());
	    	List<Orderdetailvo> orderdetils = ods.selorderdetailbyoid(order.getId());
	    	  for(Orderdetailvo orderdetail:orderdetils)
	    	  {
	    		  Goodvo good = gs.selgood(orderdetail.getGid());
					good.setShopnumber(orderdetail.getNumber());
					 order.getGoods().add(good);
	    		  
	    	  }
	    	  useorders.add(order);
	   	
	    }
	         int allpage= os.adselpage();
	    request.setAttribute("nowpage",page);	
	    request.setAttribute("allpage",allpage);
	    request.setAttribute("orders",useorders);	
		
		return "showorder/showorder";	
	}
	
	@RequestMapping("modorderstatus.form")
	public String modorderstatus(int orderid,String status)
	{
		Ordervo order = os.selorderbyid(orderid);
		order.setStatus(status);
        os.moorder(order);	
         return "showorder.do?page=1";
		
	}
	
	
	
	
	
	
	
	
	

}
