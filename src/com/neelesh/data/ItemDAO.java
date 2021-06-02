package com.neelesh.data;

import java.util.List;

import com.neelesh.model.Item;

public interface ItemDAO {

	public List<Item> getItems() throws Exception;
	
//	void addItem(HttpServletRequest request) throws Exception;
	
	void addItem(Item item) throws Exception;
	
	public void deleteItem(int itemCode) throws Exception;
	
	public List<Item> searchItems(String itemName) throws Exception;
	
	public Item getItem(int itemCode) throws Exception;
	
	public void updateItem(Item item) throws Exception;

}
