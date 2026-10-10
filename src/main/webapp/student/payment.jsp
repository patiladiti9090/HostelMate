<%
if(session.getAttribute("studentId") == null){
    response.sendRedirect("../login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Payment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(135deg,#4F46E5,#6366F1);
}

.card-ui {
    background: linear-gradient(135deg,#111827,#1F2937);
    color: white;
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.3);
}

input {
    border-radius: 10px !important;
}
</style>
</head>

<body>

<div class="container mt-5">
<div class="col-md-5 mx-auto card-ui">

<h3 class="text-center mb-3">Secure Payment</h3>

<form action="receipt.jsp">

<input class="form-control mb-3" placeholder="Card Number (16 digits)" required>

<input class="form-control mb-3" placeholder="CVV" required>

<input class="form-control mb-3" type="month" required>

<button class="btn btn-warning w-100">Pay Now</button>

</form>

</div>
</div>

</body>
</html>