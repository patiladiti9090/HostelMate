package com.hostelmate.servlet;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import com.hostelmate.dao.StudentDAO;
import com.hostelmate.model.Student;

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String mobile = req.getParameter("mobile");
        String password = req.getParameter("password");

        Student s = new Student();
        s.setName(name);
        s.setEmail(email);
        s.setMobile(mobile);
        s.setPassword(password);

        StudentDAO dao = new StudentDAO();
        boolean status = dao.register(s);

        if (status) {
            res.sendRedirect("login.jsp");
        } else {
            res.sendRedirect("register.jsp?error=1");
        }
    }
}