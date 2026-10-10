<%@page session="true"%>
<!DOCTYPE html>
<html>
<head>
<title>HostelMate</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

<style>
body {
    font-family: 'Poppins';
    background: linear-gradient(135deg,#4F46E5,#6366F1);
    color: white;
}

/* Navbar */
.navbar {
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(10px);
}

/* Hero */
.hero {
    height: 90vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
}

/* Button */
.btn-custom {
    background: #F59E0B;
    color: white;
    border-radius: 30px;
    padding: 10px 25px;
}

/* Sections */
section {
    padding: 60px 0;
}

/* Smooth Scroll */
html {
    scroll-behavior: smooth;
}
</style>

</head>

<body>

<!-- ================= NAVBAR ================= -->
<nav class="navbar navbar-expand-lg navbar-dark">
<div class="container">

    <!-- LOGO → ADMIN LOGIN -->
    <a class="navbar-brand fw-bold text-warning"
       href="<%=request.getContextPath()%>/admin/admin_login.jsp">
        🏨 HostelMate
    </a>

    <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#nav">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="nav">

        <ul class="navbar-nav ms-auto">

            <!-- ABOUT -->
            <li class="nav-item">
                <a class="nav-link" href="#about">About Us</a>
            </li>

            <!-- CONTACT -->
            <li class="nav-item">
                <a class="nav-link" href="#contact">Contact</a>
            </li>

            <!-- ROOMS -->
            <li class="nav-item">
                <a class="nav-link"
                   href="<%=request.getContextPath()%>/student/rooms.jsp">
                   Rooms
                </a>
            </li>

            <!-- USER LOGIN -->
            <li class="nav-item">
                <a class="nav-link" href="login.jsp">
                    User Login
                </a>
            </li>

        </ul>

    </div>
</div>
</nav>

<!-- ================= HERO ================= -->
<div class="hero">
<div>

    <h1 class="display-4 fw-bold">Smart Hostel Management</h1>
    <p class="mb-4">Book Rooms Easily • Secure Payments • Smart Living</p>

    <a href="student/rooms.jsp" class="btn btn-custom">
        Explore Rooms
    </a>

</div>
</div>

<!-- ================= ABOUT ================= -->
<section id="about" class="container text-center">
    <h2>About Us</h2>
    <p>
        HostelMate is a modern hostel management system that helps students
        easily find and book rooms, manage payments, and raise complaints.
    </p>
</section>

<!-- ================= CONTACT ================= -->
<section id="contact" class="container text-center">
    <h2>Contact Us</h2>
    <p>Email: hostelmate@gmail.com</p>
    <p>Phone: +91 9876543210</p>
</section>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>