<%@page import="java.sql.*"%>
<%@page import="com.hostelmate.dao.DBConnection"%>

<%
if(session.getAttribute("studentId") == null){
    response.sendRedirect("../login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Booking</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(135deg,#4F46E5,#6366F1);
    font-family: 'Poppins';
}

.glass {
    background: rgba(255,255,255,0.2);
    backdrop-filter: blur(15px);
    padding: 30px;
    border-radius: 20px;
    color: white;
}
</style>

<script>
function calc(){
    let price = document.getElementById("price").value;
    let duration = document.getElementById("duration").value;

    if(duration === ""){
        document.getElementById("total").value = "";
        return;
    }

    let months = (duration=="6") ? 6 : 12;
    document.getElementById("total").value = price * months;
}
</script>
</head>

<body>

<div class="container mt-5">
<div class="col-md-5 mx-auto glass">

<%
int id = Integer.parseInt(request.getParameter("roomId"));
Connection con = DBConnection.getConnection();
PreparedStatement ps = con.prepareStatement("select * from rooms where id=?");
ps.setInt(1,id);
ResultSet rs = ps.executeQuery();
rs.next();
%>

<h3 class="text-center mb-3">Book Room</h3>

<!-- FORM NOW GOES TO RULES PAGE -->
<form action="rules.jsp" method="get">

<input type="hidden" name="roomId" value="<%=id%>">

<label>Room Type</label>
<input class="form-control mb-2" value="<%=rs.getString("room_type")%>" readonly>

<label>Price (per month)</label>
<input id="price" class="form-control mb-2" value="<%=rs.getDouble("price")%>" readonly>

<label>Duration</label>
<select id="duration" name="duration" class="form-control mb-2" onchange="calc()" required>
<option value="">Select Duration</option>
<option value="6">6 Months</option>
<option value="12">1 Year</option>
</select>

<label>Total Amount</label>
<input id="total" name="total" class="form-control mb-3" placeholder="Total Amount" readonly required>

<button class="btn btn-warning w-100 mt-3">
    Continue to Rules
</button>

</form>

</div>
</div>

</body>
</html>