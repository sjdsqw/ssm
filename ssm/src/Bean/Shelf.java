package Bean;

import java.util.List;

public class Shelf {
	private int id;
	private String name;
	private String img;
	private int ord;
	private List<Goodvo> goods;
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getOrd() {
		return ord;
	}
	public void setOrder(int ord) {
		this.ord = ord;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Goodvo> getGoods() {
		return goods;
	}
	public void setGoods(List<Goodvo> goods) {
		this.goods = goods;
	}
	
	

}
