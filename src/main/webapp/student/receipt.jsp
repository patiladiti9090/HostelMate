<!DOCTYPE html>
<html>
<head>
<title>Receipt</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: #F8FAFC;
}

.receipt {
    max-width: 500px;
    margin: auto;
    background: white;
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.1);
}

.success {
    color: green;
    font-size: 22px;
    font-weight: bold;
}
</style>
</head>

<body>

<div class="container mt-5">

<div class="receipt text-center">

<h2 class="success">Payment Successful 🎉</h2>

<hr>

<p><strong>Booking Confirmed</strong></p>
<p>HostelMate Smart System</p>

<p>Date: <%= new java.util.Date() %></p>

<hr>

<button onclick="window.print()" class="btn btn-primary">
Print Receipt
</button>

<a href="../index.jsp" class="btn btn-success">Go Home</a>

</div>

</div>

</body>
</html>