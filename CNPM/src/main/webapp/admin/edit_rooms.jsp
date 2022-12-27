<%@page import="com.entity.RoomDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.RoomDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Books</h4>
						
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						RoomDAOImpl dao = new RoomDAOImpl(DBConnect.getConn());
						RoomDtls b = dao.getRoomById(id);
						%>

						<form action="../editrooms" method="post">
							<input type="hidden" name="id" value="<%=b.getRoomId()%>">

							<div class="form-gruop">
								<label for="exampleInputEmail">Room Number</label> <input
									name="bnumber" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									value="<%=b.getRoomNuber()%>">
							</div>

							<div class="form-gruop">
								<label for="exampleInputEmail">RoomType</label> <input
									name="btype" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									value="<%=b.getRoomType()%>">
							</div>

							<div class="form-gruop">
								<label for="exampleInputEmail">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputPassword1" value="<%=b.getPrice()%>">
							</div>

							<div class="form-group">
								<label for="inputState">Book Status</label> <select
									id="inputState" name="bstatus" class="form-control">

									<%
									if ("Active".equals(b.getStatus())) {
									%>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									<%
									} else {
									%>
									<option value="Inactive">Inactive</option>
									<option value="Active">Active</option>
									<%
									}
									%>
								</select>
							</div>

							<button type="submit" class="btn btn-primary">Update</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 139px;">
		<%@include file="footer.jsp"%></div>

</body>
</html>