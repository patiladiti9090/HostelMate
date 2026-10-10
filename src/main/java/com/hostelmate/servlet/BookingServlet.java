package com.hostelmate.servlet;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import com.hostelmate.dao.BookingDAO;
import com.hostelmate.model.Booking;

public class BookingServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        int roomId = Integer.parseInt(req.getParameter("roomId"));
        String duration = req.getParameter("duration");
        double total = Double.parseDouble(req.getParameter("total"));

        HttpSession session = req.getSession();
        int studentId = (int) session.getAttribute("studentId");

        Booking b = new Booking();
        b.setRoomId(roomId);
        b.setStudentId(studentId);
        b.setDuration(duration);
        b.setTotalAmount(total);

        BookingDAO dao = new BookingDAO();
        dao.addBooking(b);

        res.sendRedirect("payment.jsp");
    }
}