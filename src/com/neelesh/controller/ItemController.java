package com.neelesh.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.neelesh.data.ItemDAOImpl;
import com.neelesh.model.Item;

/**
 * Servlet implementation class ItemController
 */
@WebServlet("/ItemController")
public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ItemDAOImpl itemUtil;
		
	String resource = "login.jsp";
	String message = null;

	@Override
	public void init() throws ServletException {

		super.init();
		itemUtil = new ItemDAOImpl();
	}
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		try {
				
			String COMMAND = request.getParameter("COMMAND");
			
			if(COMMAND == null) {
				COMMAND = "LIST";
			}
			
			switch(COMMAND) {
				
			case "LIST":
				if(session.isNew()) {
					sessionChecker(request, response);
				}
				else {
					listItem(request, response);
				}
				break;
				
			case "ADD":
				if(session.isNew()) {
					sessionChecker(request, response);
				}
				else {
					addItem(request, response);
				}
				break;
				
			case "DELETE":
				if(session.isNew()) {
					sessionChecker(request, response);
				}
				else {
					deleteItem(request,response);
				}
				break;
			
			case "SEARCH":
				if(session.isNew()) {
					sessionChecker(request, response);
				}
				else {
					SearchItem(request,response);
				}
				break;
				
			case "LOAD":
				if(session.isNew()) {
					sessionChecker(request, response);
				}
				else {
					loadItem(request,response);
				}
				break;
				
			case "UPDATE": 
				if(session.isNew()) {
					sessionChecker(request, response);
				}
				else {
					updateItem(request,response);
				}
				break;
				
			case "CHECK": 
				if(session.isNew()) {
					sessionChecker(request, response);
				}
				else {
					checkItem(request,response);
				}
				break;
				
			default:
				listItem(request, response);
			}
		
		} catch (Exception e) {
			throw new ServletException(e);
		}
		
	}
	
	private void checkItem(HttpServletRequest request, HttpServletResponse response) throws Exception {

		RequestDispatcher rd=request.getRequestDispatcher("add-item-bootstrap.jsp");
		rd.forward(request, response);
		
	}


	private void sessionChecker(HttpServletRequest request, HttpServletResponse response) throws Exception {

		message = "Session Expired : TRY AGAIN";
		RequestDispatcher rd = request.getRequestDispatcher(resource);
		request.setAttribute("msg", message);
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	
	}
	
	private void loadItem(HttpServletRequest request, HttpServletResponse response) throws Exception{
		int itemCode=Integer.parseInt(request.getParameter("itemCode"));
		Item item=itemUtil.getItem(itemCode);
		request.setAttribute("ITEM",item);
		RequestDispatcher rd=request.getRequestDispatcher("update-item-bootstrap.jsp");
		rd.forward(request, response);
		
		
	}

	private void updateItem(HttpServletRequest request, HttpServletResponse response) throws Exception{
		int itemCode=Integer.parseInt(request.getParameter("itemCode"));
		String itemName=request.getParameter("itemName");
		String unit=request.getParameter("unit");
		int beginningInventory=Integer.parseInt(request.getParameter("beginningInventory"));
		int quantityOnHand=Integer.parseInt(request.getParameter("quantityOnHand"));
		double pricePerUnit=Double.parseDouble(request.getParameter("pricePerUnit"));
		String dateOfManufacture=request.getParameter("dateOfManufacture");
		String dateOfExpiry=request.getParameter("dateOfExpiry");
		String location=request.getParameter("location");
		String itemCategory=request.getParameter("itemCategory");
		String itemSubCategory=request.getParameter("itemSubCategory");
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date dom=new Date();
		dom=sdf.parse(dateOfManufacture);
		Date doe=new Date();
		doe=sdf.parse(dateOfExpiry);
		
		
		Item item=new Item(itemCode,itemName, unit, beginningInventory, quantityOnHand, pricePerUnit, dom, doe, location, itemCategory, itemSubCategory);
		itemUtil.updateItem(item);
		
		listItem(request,response);
	}


	private void SearchItem(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String itemName=request.getParameter("theSearchName");
		List<Item> itemList = itemUtil.searchItems(itemName);
		request.setAttribute("ITEM_LIST", itemList);
		
		RequestDispatcher rd = request.getRequestDispatcher("item-list-bootstrap.jsp");
		
		rd.forward(request, response);
		listItem(request,response);
		
	}



	private void deleteItem(HttpServletRequest request, HttpServletResponse response) throws Exception{
		int itemCode=Integer.parseInt(request.getParameter("itemCode"));
		itemUtil.deleteItem(itemCode);
		listItem(request,response);
		
	}


	private void addItem(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String itemName = request.getParameter("itemName");
		String unit = request.getParameter("unit");
		int beginningInventory = Integer.valueOf(request.getParameter("beginningInventory"));
		int quantityOnHand = Integer.valueOf(request.getParameter("quantityOnHand"));
		Double pricePerUnit = Double.valueOf(request.getParameter("pricePerUnit"));
		String manufactureDate = request.getParameter("dateOfManufacture");
		String expiryDate = request.getParameter("dateOfExpiry");
		String location = request.getParameter("location");
		String itemCategory = request.getParameter("itemCategory");
		String itemSubCategory = request.getParameter("itemSubCategory");
		
		
//		System.out.println(location + "   " + itemCategory + "   " + itemSubCategory);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date dateOfManufacture = new Date();
		Date dateOfExpiry = new Date();
		
		try {
			dateOfManufacture = sdf.parse(manufactureDate);
			dateOfExpiry = sdf.parse(expiryDate);
		} catch (ParseException e) {

			e.printStackTrace();
		}
		
		Item item = new Item(itemName, unit, beginningInventory, quantityOnHand, pricePerUnit, dateOfManufacture, dateOfExpiry, location, itemCategory, itemSubCategory);
		
		itemUtil.addItem(item);
		
		response.sendRedirect("ItemController");
	}


	private void listItem(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Item> itemList = itemUtil.getItems();
		request.setAttribute("ITEM_LIST", itemList);
		
		RequestDispatcher rd = request.getRequestDispatcher("item-list-bootstrap.jsp");
		
		rd.forward(request, response);
		
	}
	
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		try {
//			addItem(request, response);
//		} catch (Exception e) {
//			throw new ServletException(e);
//		}
//		
//	}
//
//
//	private void addItem(HttpServletRequest request, HttpServletResponse response) {
//		
//		try {
//			itemUtil.addItem(request);
//			
//			doGet(request, response);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//	}
	
	

}
