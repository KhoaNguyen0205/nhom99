<%@page import="com.entity.RoomDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.RoomDAOImpl"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<%@ include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-image {
	background: url("image/b3.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}

.bg-cl {
	background-color: #ffff1a;
}

.bg-cl:hover {
	background-color: #ff751a;
	text-decoration: none;
}

#home {
	background-image: url("img/Nen2.jpg");
	width: 100%;
	height: 100vh;
	background-size: cover;
	background-position: top 1px center;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: flex-start;
}
</style>
</head>
<body>
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<%@include file="all_component/navbar.jsp"%>
	<section id="home">
		<div class="container">
			<h1>WELL COME TO THE HOTEL</h1>
			<h5>book hotel room</h5>
			<h1>
				<span>Best Price</span> This Year
			</h1>
			<p>hotel</p>
		</div>
	</section>
<div class="container-fluid back-image">
		<h2 class="text-center text-danger">asdasd</h2>
	</div>
	<!-- Start recent room -->
	<div class="container">
		<h3 class="text-center">Recent Room</h3>
		<div class="row">
			<%
			RoomDAOImpl dao2 = new RoomDAOImpl(DBConnect.getConn());
			List<RoomDtls> list2 = dao2.getRecentRoom();
			for (RoomDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="cart-body">
					  <image alt="" src="room/<%=b.getPhotoName()%>"
							style="width:150px; height:150px" class="image-thumblin ml-5">
					  <p class="text-center text-danger ml-1"><%=b.getRoomNuber()%></p>
					  <p class="text-center text-danger ml-1"><%=b.getRoomType()%></p>
					  
					  <div class="row">
					       
					        <%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3">Booking</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getRoomId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-3">Booking</a>
							<%
							}
							%>
							
						  <a href="view_rooms.jsp?bid=<%=b.getRoomId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a>
								
								
								 <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%><i
								class="fa-solid fa-dollar-sign"></i></a>
							</div>		
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		<div class="text-center mt-1">
			<a href="all_recent_book.jsp"
				class="btn btn-danger btn-sm text-white">View All</a>
		</div>
  </div>
  
  <!--  end Recent room -->
	<hr>
	<!-- Start VipRoom -->
  <div class="container">
		<h3 class="text-center">VIP</h3>
		<div class="row">
			<%
			RoomDAOImpl dao = new RoomDAOImpl(DBConnect.getConn());
			List<RoomDtls> list = dao.getVipRoom();
			for (RoomDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="cart-body">
					  <image alt="" src="room/<%=b.getPhotoName()%>"
							style="width:150px; height:150px" class="image-thumblin ml-5">
					  <p class="text-center text-danger ml-1"><%=b.getRoomNuber()%></p>
					  <p class="text-center text-danger ml-1"><%=b.getRoomType()%></p>
					  
					  <div class="row">
					       
					        <%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3">Booking</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getRoomId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-3">Booking</a>
							<%
							}
							%>
							
						  <a href="view_rooms.jsp?bid=<%=b.getRoomId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a>
								
								
								 <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%><i
								class="fa-solid fa-dollar-sign"></i></a>
							</div>		
					</div>
				</div>
			</div>
			<%
			}
			%>	
		</div>
		<div class="text-center mt-1">
			<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View
				All</a>
		</div>

	</div>
  <!-- end Viproom -->
  <hr>
  <!-- start type1 -->
  <div class="container">
		<h3 class="text-center">TYPE1</h3>
		<div class="row">
			<%
			RoomDAOImpl dao3 = new RoomDAOImpl(DBConnect.getConn());
			List<RoomDtls> list3 = dao.getType1Room();
			for (RoomDtls b : list3) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="cart-body">
					  <image alt="" src="room/<%=b.getPhotoName()%>"
							style="width:150px; height:150px" class="image-thumblin ml-5">
					  <p class="text-center text-danger ml-1"><%=b.getRoomNuber()%></p>
					  <p class="text-center text-danger ml-1"><%=b.getRoomType()%></p>
					  
					  <div class="row">
					       
					        <%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3">Booking</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getRoomId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-3">Booking</a>
							<%
							}
							%>
							
						  <a href="view_rooms.jsp?bid=<%=b.getRoomId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a>
								
								
								 <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%><i
								class="fa-solid fa-dollar-sign"></i></a>
							</div>		
					</div>
				</div>
			</div>
			<%
			}
			%>	
		</div>
		<div class="text-center mt-1">
			<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View
				All</a>
		</div>

	</div>
  <!-- end type 1 -->
<hr>

<!-- start type 2 -->
<div class="container">
		<h3 class="text-center">TYPE2</h3>
		<div class="row">
			<%
			RoomDAOImpl dao4 = new RoomDAOImpl(DBConnect.getConn());
			List<RoomDtls> list4 = dao4.getType2Room();
			for (RoomDtls b : list4) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="cart-body">
					  <image alt="" src="room/<%=b.getPhotoName()%>"
							style="width:150px; height:150px" class="image-thumblin ml-5">
					  <p class="text-center text-danger ml-1"><%=b.getRoomNuber()%></p>
					  <p class="text-center text-danger ml-1"><%=b.getRoomType()%></p>
					  
					  <div class="row">
					       
					        <%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3">Booking</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getRoomId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-3">Booking</a>
							<%
							}
							%>
							
						  <a href="view_rooms.jsp?bid=<%=b.getRoomId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a>
								
								
								 <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%><i
								class="fa-solid fa-dollar-sign"></i></a>
							</div>		
					</div>
				</div>
			</div>
			<%
			}
			%>	
		</div>
		<div class="text-center mt-1">
			<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View
				All</a>
		</div>

	</div>
<!-- end type 2 -->
</body>
</html>