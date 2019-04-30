package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Bean.Orderdetailvo;
import database.OrderdetailMapper;
import util.Page;

@Service
public class Orderdetailservice {

	@Autowired
	OrderdetailMapper odm;

	public void insertorderdetail(Orderdetailvo orderdetail) {
		odm.insertorderdetail(orderdetail);

	}

	public void delorderdetailbyoid(int oid) {
		odm.delorderdetailbyoid(oid);
	}

	public void moorderdetail(Orderdetailvo orderdetail) {
		odm.moorderdetail(orderdetail);
	}

	public List<Orderdetailvo> showallorderdetail() {
		return odm.showallorderdetail();
	}

	public List<Orderdetailvo> showorderdetailbypage(int page) {
		page = page * Page.size - Page.size;
		Page p = new Page();
		p.start = page;
		return odm.showorderdetailbypage(p);
	}

	public int adseldetailpage() {
		return odm.adseldetailpage();
	}

	public List<Orderdetailvo> selorderdetailbygid(int gid) {
		return odm.selorderdetailbygid(gid);
	}

	public List<Orderdetailvo> selorderdetailbyoid(int oid) {

		return odm.selorderdetailbyoid(oid);
	}
}
