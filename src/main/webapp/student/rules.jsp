<%
if(session.getAttribute("studentId") == null){
    response.sendRedirect("../login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Rules & Regulations</title>

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
function proceed(){
    if(!document.getElementById("accept").checked){
        alert("Please accept rules first");
        return false;
    }
}
</script>
</head>

<body>

<div class="container mt-5">
<div class="glass">

<h3>Hostel Rules & Regulations</h3>

<ul>
<li>Maintain discipline inside hostel premises</li>
<li>Visitors are not allowed after 8 PM</li>
<li>No loud music or disturbance</li>
<li>Keep room clean and hygienic</li>
<li>Electricity usage should be limited</li>
<li>Damage to property will be fined</li>
<li>Follow hostel timing strictly</li>
</ul>

<form action="payment.jsp" onsubmit="return proceed()">

<input type="checkbox" id="accept"> I accept all rules<br><br>

<button class="btn btn-warning w-100">Proceed to Payment</button>

</form>

</div>
</div>

</body>
</html>