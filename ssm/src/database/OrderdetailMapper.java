package database;

import java.util.List;

import Bean.Orderdetailvo;
import util.Page;

public interface OrderdetailMapper {

	public void insertorderdetail(Orderdetailvo orderdetail);

	public void delorderdetailbyoid(int oid);

	public void moorderdetail(Orderdetailvo orderdetail);

	public List<Orderdetailvo> showallorderdetail();

	public List<Orderdetailvo> showorderdetailbypage(Page page);

	public int adseldetailpage();

	public List<Orderdetailvo> selorderdetailbygid(int gid);

	public List<Orderdetailvo> selorderdetailbyoid(int oid);

}
