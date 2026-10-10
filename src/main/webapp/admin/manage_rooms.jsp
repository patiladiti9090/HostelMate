<%@page import="java.sql.*"%>
<%@page import="com.hostelmate.dao.DBConnection"%>

<%
if(session.getAttribute("admin") == null){
    response.sendRedirect("admin_login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Manage Rooms</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<div class="container mt-5">

<h3>Manage Rooms</h3>

<!-- ADD ROOM -->
<form action="../AddRoomServlet" method="post">

<input class="form-control mb-2" name="type" placeholder="Room Type" required>

<input class="form-control mb-2" name="capacity" placeholder="Capacity" required>

<input class="form-control mb-2" name="price" placeholder="Price" required>

<input class="form-control mb-2" name="available" placeholder="Available" required>

<button class="btn btn-success">Add Room</button>

</form>

<hr>

<!-- ROOM TABLE -->
<table class="table table-bordered">

<tr>
<th>ID</th>
<th>Type</th>
<th>Price</th>
<th>Action</th>
</tr>

<%
Connection con = DBConnection.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from rooms");

while(rs.next()){
%>

<tr>
<td><%=rs.getInt("id")%></td>
<td><%=rs.getString("room_type")%></td>
<td><%=rs.getDouble("price")%></td>

<td>
<a href="../DeleteRoomServlet?id=<%=rs.getInt("id")%>" class="btn btn-danger">
Delete
</a>
</td>
</tr>

<%
}
%>

</table>

</div>

</body>
</html>