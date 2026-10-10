function validateRegister() {
    let name = document.getElementById("name").value;
    let email = document.getElementById("email").value;
    let mobile = document.getElementById("mobile").value;
    let password = document.getElementById("password").value;
    let confirm = document.getElementById("confirm").value;

    let namePattern = /^[A-Za-z ]+$/;
    let emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    let mobilePattern = /^[0-9]{10}$/;

    if (!namePattern.test(name)) {
        alert("Invalid Name");
        return false;
    }

    if (!emailPattern.test(email)) {
        alert("Invalid Email");
        return false;
    }

    if (!mobilePattern.test(mobile)) {
        alert("Invalid Mobile Number");
        return false;
    }

    if (password.length < 6 || !/\d/.test(password)) {
        alert("Password must be 6 chars + 1 number");
        return false;
    }

    if (password !== confirm) {
        alert("Passwords do not match");
        return false;
    }

    return true;
}