package com.hostelmate.servlet;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class AdminLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        // SIMPLE ADMIN LOGIN (STATIC)
        if(username.equals("admin") && password.equals("admin123")){

            HttpSession session = req.getSession();
            session.setAttribute("admin", username);

            res.sendRedirect("admin/admin_dashboard.jsp");

        } else {
            res.sendRedirect("admin/admin_login.jsp?error=1");
        }
    }
}