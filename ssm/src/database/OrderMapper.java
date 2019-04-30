package database;

import java.util.List;

import Bean.Ordervo;
import util.Page;

public interface OrderMapper {
	public void insertorder(Ordervo order);

	public void delorder(int id);

	public void moorder(Ordervo order);

	public List<Ordervo> showallorder();

	public List<Ordervo> showorderbypage(Page page);

	public int adselpage();

	public List<Ordervo> selorderbyuid(String uid);

	public Ordervo selorderbyid(int id);

}
