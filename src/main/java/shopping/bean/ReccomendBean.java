package shopping.bean;

import java.util.ArrayList;
import java.util.List;

public class ReccomendBean {
	private List<ItemBean> reccomend = new ArrayList<ItemBean>();
	private int output;
	
	public ReccomendBean() {}
	
	public List<ItemBean> getItems(){
		return reccomend;
	}

	public void addcart(ItemBean bean, int nums) {
		ItemBean reitem = null;
		for(ItemBean r : reccomend) {
			if(r.getCode() == bean.getCode()) {
				reitem = r;
				break;
			}
		}
		if(reitem == null) {
			bean.setQuantity(nums);
			reccomend.add(bean);
		}else {
			reitem.setQuantity(nums + reitem.getQuantity());
		}
		recalcTotal();
	}
	
	public void deleteCart(int itemCode) {
		for(ItemBean reitem : reccomend) {
			if(reitem.getCode() == itemCode) {
				reccomend.remove(reitem);
				break;
			}
		}
		recalcTotal();
	}
	public int getTotal() {
		return output;
	}
	
	private void recalcTotal() {
		output = 0;
		for(ItemBean reitem :reccomend) {
			output += reitem.getPrice() * reitem.getQuantity(); 
		}
	}
}
