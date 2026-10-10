<%
if(session.getAttribute("student")==null){
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Complaint</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background:#F8FAFC;
    font-family:'Poppins';
}
.card {
    max-width:500px;
    margin:auto;
    margin-top:50px;
    padding:20px;
    border-radius:10px;
}
</style>

</head>

<body>

<div class="card shadow">

<h3 class="text-center">Raise Complaint</h3>

<form action="ComplaintServlet" method="post" enctype="multipart/form-data">

    <select class="form-control mb-3" name="category" required>
        <option>Electricity</option>
        <option>Water</option>
        <option>Cleaning</option>
        <option>Internet</option>
    </select>

    <textarea class="form-control mb-3" name="description" placeholder="Describe issue" required></textarea>

    <input type="file" class="form-control mb-3" name="image" accept="image/*">

    <button class="btn btn-danger w-100">Submit Complaint</button>

</form>

</div>

</body>
</html>