<!DOCTYPE html>
<html>
<head>
<title>Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

<style>
body {
    font-family: 'Poppins', sans-serif;
}

.left {
    background: linear-gradient(135deg,#4F46E5,#6366F1);
    color: white;
    height: 100vh;
    display:flex;
    align-items:center;
    justify-content:center;
    text-align:center;
}

.right {
    display:flex;
    align-items:center;
    justify-content:center;
    height:100vh;
}

.card-glass {
    backdrop-filter: blur(10px);
    background: rgba(255,255,255,0.2);
    padding:30px;
    border-radius:15px;
    box-shadow:0 8px 32px rgba(0,0,0,0.2);
}
</style>

<script>
function validateLogin(){
    let email = document.forms["loginForm"]["email"].value;
    let password = document.forms["loginForm"]["password"].value;

    if(!email.includes("@")){
        alert("Invalid Email");
        return false;
    }

    if(password.length < 6){
        alert("Password must be 6+ characters");
        return false;
    }
}
</script>

</head>

<body>

<div class="container-fluid">
<div class="row">

<div class="col-md-6 left">
    <div>
        <h1>HostelMate</h1>
        <p>Smart Hostel Management System</p>
    </div>
</div>

<div class="col-md-6 right">
    <div class="card-glass col-md-8">

        <h3 class="text-center mb-4">Login</h3>

        <form name="loginForm" action="LoginServlet" method="post" onsubmit="return validateLogin()">

            <input class="form-control mb-3" type="email" name="email" placeholder="Email" required>

            <input class="form-control mb-3" type="password" name="password" placeholder="Password" required>

            <button class="btn btn-warning w-100">Login</button>

            <p class="mt-3 text-center">
                Don't have account? <a href="register.jsp">Register</a>
            </p>

        </form>

    </div>
</div>

</div>
</div>

</body>
</html>