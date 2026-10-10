<!DOCTYPE html>
<html>
<head>
<title>Register</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

<style>
body {
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg,#4F46E5,#6366F1);
}

.glass {
    backdrop-filter: blur(15px);
    background: rgba(255,255,255,0.2);
    border-radius: 15px;
    padding: 30px;
    color: white;
}
</style>

<script>
function validate() {
    let name = document.forms["form"]["name"].value;
    let mobile = document.forms["form"]["mobile"].value;

    if (!/^[A-Za-z ]+$/.test(name)) {
        alert("Name must be alphabets only");
        return false;
    }

    if (!/^[0-9]{10}$/.test(mobile)) {
        alert("Mobile must be 10 digits");
        return false;
    }
}
</script>

</head>

<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5 glass">
            <h3 class="text-center">Register</h3>

            <form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">

                <input class="form-control mb-3" name="name" placeholder="Full Name" required>
                <input class="form-control mb-3" name="email" type="email" placeholder="Email" required>
                <input class="form-control mb-3" name="mobile" placeholder="Mobile" required>
                <input class="form-control mb-3 text-dark" name="password" type="password" placeholder="Password" required>

                <button class="btn btn-warning w-100">Register</button>
            </form>

        </div>
    </div>
</div>

</body>
</html>