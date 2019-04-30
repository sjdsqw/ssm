package Bean;

import java.util.List;

public class Ordervo extends Order {
       public List<Goodvo> goods;
    

	public List<Goodvo> getGoods() {
		return goods;
	}

	public void setGoods(List<Goodvo> goods) {
		this.goods = goods;
	}
       
}
