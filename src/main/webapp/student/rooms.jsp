<%@page import="java.util.*"%>
<%@page import="com.hostelmate.dao.RoomDAO"%>
<%@page import="com.hostelmate.model.Room"%>

<!DOCTYPE html>
<html>
<head>
<title>Rooms</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: #F8FAFC;
}

/* Card */
.room-card {
    border-radius: 20px;
    overflow: hidden;
    transition: 0.3s;
}

.room-card:hover {
    transform: scale(1.05);
}

.room-img {
    height: 200px;
    object-fit: cover;
}
</style>
</head>

<body>

<div class="container mt-5">

<h2 class="text-center mb-4">Available Rooms</h2>

<div class="row">

<%
RoomDAO dao = new RoomDAO();
List<Room> list = dao.getAllRooms();

for(Room r : list){

String img = "";

if(r.getRoomType().equals("Single")){
    img = "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2";
}else if(r.getRoomType().equals("Double")){
    img = "https://images.unsplash.com/photo-1586105251261-72a756497a11";
}else{
    img = "https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf";
}
%>

<div class="col-md-4 mb-4">
<div class="card room-card shadow">

<img src="<%=img%>" class="room-img">

<div class="p-3">

<h4><%=r.getRoomType()%> Room</h4>
<p>Capacity: <%=r.getCapacity()%></p>
<p>Price: ₹<%=r.getPrice()%></p>
<p>Available: <%=r.getAvailable()%></p>

<%
if(session.getAttribute("studentId") == null){
%>
<a href="<%=request.getContextPath()%>/login.jsp" class="btn btn-warning w-100">
Login to Book
</a>
<%
}else{
%>
<a href="<%=request.getContextPath()%>/student/booking.jsp?roomId=<%=r.getId()%>" 
   class="btn btn-primary w-100">
Book Now
</a>
<%
}
%>

</div>
</div>
</div>

<%
}
%>

</div>
</div>

</body>
</html>