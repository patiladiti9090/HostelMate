<%
if(session.getAttribute("student")==null){
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Feedback</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body { background:#F8FAFC; font-family:'Poppins'; }
.card { max-width:500px; margin:auto; margin-top:50px; padding:20px; }
</style>

</head>

<body>

<div class="card shadow">

<h3 class="text-center">Feedback</h3>

<form action="FeedbackServlet" method="post">

    <label>Rating</label>
    <select class="form-control mb-3" name="rating">
        <option value="5">⭐⭐⭐⭐⭐</option>
        <option value="4">⭐⭐⭐⭐</option>
        <option value="3">⭐⭐⭐</option>
        <option value="2">⭐⭐</option>
        <option value="1">⭐</option>
    </select>

    <textarea class="form-control mb-3" name="message" placeholder="Your feedback"></textarea>

    <button class="btn btn-success w-100">Submit</button>

</form>

</div>

</body>
</html>