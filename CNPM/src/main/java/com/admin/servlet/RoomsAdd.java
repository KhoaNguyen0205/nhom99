package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.RoomDAOImpl;
import com.DB.DBConnect;
import com.entity.RoomDtls;
import com.mysql.cj.Session;

@WebServlet("/add_rooms")
@MultipartConfig
public class RoomsAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String roomNumber = req.getParameter("bnumber");
			String price = req.getParameter("price");
			String roomType = req.getParameter("btype");
			String status = req.getParameter("bstatus");
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();
			
			RoomDtls b=new RoomDtls(roomNumber,price,roomType,status,fileName);
			RoomDAOImpl dao = new RoomDAOImpl(DBConnect.getConn());
			
			boolean f = dao.addRooms(b);
			 HttpSession session = req.getSession();
			 if(f) {
				 String path = getServletContext().getRealPath("") + "room";
				 java.io.File file = new java.io.File(path);
				 part.write(path+java.io.File.separator+fileName);
				 
				 session.setAttribute("faileMsg", "Wrong");
				 resp.sendRedirect("admin/add_rooms.jsp");
			 }else {
				 session.setAttribute("succMsg", "Add room Successfully");
				 resp.sendRedirect("admin/add_rooms.jsp");
				
			 }
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	


}
