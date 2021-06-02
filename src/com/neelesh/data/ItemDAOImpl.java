package com.neelesh.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.neelesh.model.Item;

public class ItemDAOImpl implements ItemDAO{

	public List<Item> getItems() throws Exception {
		
		List<Item> itemList = new ArrayList<Item>();
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			con = ConnectionFactory.getCon();
			ps = con.prepareStatement("select * from items order by item_code");
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int itemCode = rs.getInt("item_code");
				String itemName = rs.getString("item_name");
				String unit = rs.getString("unit");
				int beginningInventory = rs.getInt("beginning_inventory");
				int quantityOnHand = rs.getInt("quantity_on_hand");
				double pricePerUnit = rs.getDouble("price_per_unit");
				Date dateOfManufacture = rs.getDate("date_of_manufacture");
				Date dateOfExpiry = rs.getDate("date_of_expiry");
				String location = rs.getString("location");
				String itemCategory = rs.getString("item_category");
				String itemSubCategory = rs.getString("item_sub_category");
				
				Item item = new Item(itemCode, itemName, unit, beginningInventory, quantityOnHand, pricePerUnit, dateOfManufacture, dateOfExpiry, location, itemCategory, itemSubCategory);
				
				itemList.add(item);
				
			}
		}
		finally {
			close(rs, ps, con);
		}
		
		return itemList;
	}

	private void close(ResultSet rs, PreparedStatement ps, Connection con) {
		
		try {
			
			if(rs != null) {
				rs.close();
			}
			if(ps != null) {
				ps.close();
			}
			if(con != null) {
				con.close();
			}
			
		}
		catch(Exception e) {
			e.getStackTrace();
		}
		
	}

//	@Override
//	public void addItem(HttpServletRequest request) throws Exception {
//		
//		try {
//			con = ConnectionFactory.getCon();
//			ps = con.prepareStatement("insert into items(item_name, unit, beginning_inventory, quantity_on_hand, price_per_unit, date_of_manufacture, date_of_expiry, location, item_category, item_sub_category) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
//			
//			ps.setString(1, request.getParameter("itemName"));
//			ps.setString(2, request.getParameter("unit"));
//			ps.setInt(3, Integer.valueOf(request.getParameter("beginningInventory")));
//			ps.setInt(4, Integer.valueOf(request.getParameter("quantityOnHand")));
//			ps.setDouble(5, Double.valueOf(request.getParameter("pricePerUnit")));
//			ps.setString(6, request.getParameter("dateOfManufacture"));
//			ps.setString(7, request.getParameter("dateOfExpiry"));
//			ps.setString(8, request.getParameter("location"));
//			ps.setString(9, request.getParameter("itemCategory"));
//			ps.setString(10, request.getParameter("itemSubCategory"));
//			
//			ps.executeUpdate();
//		}
//		finally {
//			close(rs, ps, con);
//		}
//		
//	}

	@Override
	public void addItem(Item item) throws Exception {
		
		Connection con = null;
		PreparedStatement ps = null;
		
		

		try {
			con = ConnectionFactory.getCon();
			ps = con.prepareStatement("insert into items(item_name, unit, beginning_inventory, quantity_on_hand, price_per_unit, date_of_manufacture, date_of_expiry, location, item_category, item_sub_category) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			ps.setString(1, item.getItemName());
			ps.setString(2, item.getUnit());
			ps.setInt(3, item.getBeginningInventory());
			ps.setInt(4, item.getQuantityOnHand());
			ps.setDouble(5, item.getpricePerUnit());
			ps.setTimestamp(6, new java.sql.Timestamp(item.getDateOfManufacture().getTime()));
			ps.setTimestamp(7, new java.sql.Timestamp(item.getDateOfExpiry().getTime()));
			ps.setString(8, item.getLocation());
			ps.setString(9, item.getItemCategory());
			ps.setString(10, item.getItemSubCategory());
			
			ps.executeUpdate();
		}
		finally {
			close(null, ps, con);
		}
		
	}
	
	public void deleteItem(int itemCode) throws Exception {
		Connection con=null;
		PreparedStatement ps=null;
		try {
			con=ConnectionFactory.getCon();
			ps=con.prepareStatement("delete from items where item_code=?");
			ps.setInt(1,itemCode);
			ps.executeUpdate();
		}
		finally {
			close(null,ps,con);
		}
	}


	@Override
	public List<Item> searchItems(String itemName) throws Exception {
		List<Item> searchList=new ArrayList<>();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			con=ConnectionFactory.getCon();
			ps=con.prepareStatement("select * from items where item_name=?");
			ps.setString(1, itemName);
			rs=ps.executeQuery();
			while(rs.next()) {
				int itemCode=rs.getInt(1);
				String ItemName=rs.getString(2);
				String unit=rs.getString(3);
		        int beginningInventory =rs.getInt(4);
		        int quantityOnHand=rs.getInt(5);
		        double pricePerUnit=rs.getDouble(6);
		        Date dateOfManufacture=rs.getDate(7);
		        Date dateOfExpiry=rs.getDate(8);
		        String location=rs.getString(9);
		        String itemCategory=rs.getString(10);
		        String itemSubCategory=rs.getString(11);
		        
		        Item item=new Item(itemCode, ItemName, unit, beginningInventory, quantityOnHand, pricePerUnit, dateOfManufacture, dateOfExpiry, location, itemCategory, itemSubCategory);
		        
		        searchList.add(item);
			}
		}
		finally {
			close(rs,ps,con);
		}
		return searchList;
	}

	@Override
	public Item getItem(int itemCode) throws Exception {

		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		Item item = null;
		try {
			con=ConnectionFactory.getCon();
			ps=con.prepareStatement("select * from items where item_code=?");
			ps.setInt(1, itemCode);
			rs=ps.executeQuery();
			if(rs.next()) {
				String ItemName=rs.getString(2);
				String unit=rs.getString(3);
		        int beginningInventory =rs.getInt(4);
		        int quantityOnHand=rs.getInt(5);
		        double pricePerUnit=rs.getDouble(6);
		        Date dateOfManufacture=rs.getDate(7);
		        Date dateOfExpiry=rs.getDate(8);
		        String location=rs.getString(9);
		        String itemCategory=rs.getString(10);
		        String itemSubCategory=rs.getString(11);
		        
		        item=new Item(itemCode, ItemName, unit, beginningInventory, quantityOnHand, pricePerUnit, dateOfManufacture, dateOfExpiry, location, itemCategory, itemSubCategory);
		        
			}
			else {
				throw new Exception("Item Not Found");
			}
		}
		finally {
			close(rs,ps,con);
		}
		return item;
	}

	@Override
	public void updateItem(Item item) throws Exception {
		
		Connection con=null;
		PreparedStatement ps=null;
		try
		{
			con=ConnectionFactory.getCon();
			ps=con.prepareStatement("update items set item_name=?,unit=?,beginning_inventory=?,quantity_on_hand=?,price_per_unit=?,date_of_Manufacture=?,date_of_Expiry=?,Location=?,item_category=?,item_sub_category=? where item_code=?");
			ps.setString(1, item.getItemName());
			ps.setString(2,item.getUnit());
			ps.setInt(3, item.getBeginningInventory());
			ps.setInt(4, item.getQuantityOnHand());
			ps.setDouble(5,item.getpricePerUnit());
			ps.setTimestamp(6, new java.sql.Timestamp(item.getDateOfManufacture().getTime()));
			ps.setTimestamp(7, new java.sql.Timestamp(item.getDateOfExpiry().getTime()));
			ps.setString(8,item.getLocation());
			ps.setString(9,item.getItemCategory());
			ps.setString(10,item.getItemSubCategory());
			ps.setInt(11,item.getItemCode());
			ps.executeUpdate();
		}
		finally {
			close(null,ps,con);
		}
		
	}

}
