package com.hostelmate.servlet;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import com.hostelmate.dao.StudentDAO;
import com.hostelmate.model.Student;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        // Get form data
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        // Basic validation
        if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
            res.sendRedirect("login.jsp?error=empty");
            return;
        }

        // DAO call
        StudentDAO dao = new StudentDAO();
        Student s = dao.login(email, password);

        if (s != null) {
            // ✅ CREATE SESSION
            HttpSession session = req.getSession();

            // 🔥 IMPORTANT (for booking)
            session.setAttribute("studentId", s.getId());

            // Optional (for name display)
            session.setAttribute("studentName", s.getName());

            // Redirect to rooms page
            res.sendRedirect("student/rooms.jsp");

        } else {
            // Invalid login
            res.sendRedirect("login.jsp?error=invalid");
        }
    }
}