package com.neelesh.model;

import java.util.Date;

public class Item {
	
	private int itemCode;
	private String itemName;
	private String unit;
	private int beginningInventory;
	private int quantityOnHand;
	private double pricePerUnit;
	private Date dateOfManufacture;
	private Date dateOfExpiry;
	private String location;
	private String itemCategory;
	private String itemSubCategory;
	
	public Item(String itemName, String unit, int beginningInventory, int quantityOnHand, double pricePerUnit,
			Date dateOfManufacture, Date dateOfExpiry, String location, String itemCategory, String itemSubCategory) {
		super();
		this.itemName = itemName;
		this.unit = unit;
		this.beginningInventory = beginningInventory;
		this.quantityOnHand = quantityOnHand;
		this.pricePerUnit = pricePerUnit;
		this.dateOfManufacture = dateOfManufacture;
		this.dateOfExpiry = dateOfExpiry;
		this.location = location;
		this.itemCategory = itemCategory;
		this.itemSubCategory = itemSubCategory;
		
	}

	public Item(int itemCode, String itemName, String unit, int beginningInventory, int quantityOnHand,
			double pricePerUnit, Date dateOfManufacture, Date dateOfExpiry, String location, String itemCategory,
			String itemSubCategory) {
		super();
		this.itemCode = itemCode;
		this.itemName = itemName;
		this.unit = unit;
		this.beginningInventory = beginningInventory;
		this.quantityOnHand = quantityOnHand;
		this.pricePerUnit = pricePerUnit;
		this.dateOfManufacture = dateOfManufacture;
		this.dateOfExpiry = dateOfExpiry;
		this.location = location;
		this.itemCategory = itemCategory;
		this.itemSubCategory = itemSubCategory;
	}

	public int getItemCode() {
		return itemCode;
	}

	public void setItemCode(int itemCode) {
		this.itemCode = itemCode;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public int getBeginningInventory() {
		return beginningInventory;
	}

	public void setBeginningInventory(int beginningInventory) {
		this.beginningInventory = beginningInventory;
	}

	public int getQuantityOnHand() {
		return quantityOnHand;
	}

	public void setQuantityOnHand(int quantityOnHand) {
		this.quantityOnHand = quantityOnHand;
	}

	public double getpricePerUnit() {
		return pricePerUnit;
	}

	public void setpricePerUnit(double pricePerUnit) {
		this.pricePerUnit = pricePerUnit;
	}

	public Date getDateOfManufacture() {
		return dateOfManufacture;
	}

	public void setDateOfManufacture(Date dateOfManufacture) {
		this.dateOfManufacture = dateOfManufacture;
	}

	public Date getDateOfExpiry() {
		return dateOfExpiry;
	}

	public void setDateOfExpiry(Date dateOfExpiry) {
		this.dateOfExpiry = dateOfExpiry;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getItemCategory() {
		return itemCategory;
	}

	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}

	public String getItemSubCategory() {
		return itemSubCategory;
	}

	public void setItemSubCategory(String itemSubCategory) {
		this.itemSubCategory = itemSubCategory;
	}

	@Override
	public String toString() {
		return "item [itemCode=" + itemCode + ", itemName=" + itemName + ", unit=" + unit + ", beginningInventory="
				+ beginningInventory + ", quantityOnHand=" + quantityOnHand + ", pricePerUnit=" + pricePerUnit
				+ ", dateOfManufacture=" + dateOfManufacture + ", dateOfExpiry=" + dateOfExpiry + ", location="
				+ location + ", itemCategory=" + itemCategory + ", itemSubCategory=" + itemSubCategory + "]";
	}
	
	
	
}
