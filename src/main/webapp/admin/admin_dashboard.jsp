<%
if(session.getAttribute("admin") == null){
    response.sendRedirect("admin_login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    display: flex;
}

.sidebar {
    width: 220px;
    height: 100vh;
    background: #111827;
    color: white;
    padding: 20px;
}

.content {
    flex: 1;
    padding: 20px;
}
</style>
</head>

<body>

<div class="sidebar">
    <h4>Admin Panel</h4>

    <a href="admin_dashboard.jsp" class="d-block text-white mb-2">Dashboard</a>
    <a href="manage_rooms.jsp" class="d-block text-white mb-2">Manage Rooms</a>
    <a href="../LogoutServlet" class="d-block text-white">Logout</a>
</div>

<div class="content">

<h2>Welcome Admin</h2>

<div class="row">

<div class="col-md-3">
<div class="card p-3 shadow">
<h5>Total Rooms</h5>
<h3>30</h3>
</div>
</div>

<div class="col-md-3">
<div class="card p-3 shadow">
<h5>Available Rooms</h5>
<h3>20</h3>
</div>
</div>

</div>

</div>

</body>
</html>