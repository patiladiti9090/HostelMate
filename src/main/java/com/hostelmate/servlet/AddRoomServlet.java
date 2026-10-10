package com.hostelmate.servlet;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import com.hostelmate.dao.RoomDAO;
import com.hostelmate.model.Room;

public class AddRoomServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String type = req.getParameter("type");
        int capacity = Integer.parseInt(req.getParameter("capacity"));
        double price = Double.parseDouble(req.getParameter("price"));
        int available = Integer.parseInt(req.getParameter("available"));

        Room r = new Room();
        r.setRoomType(type);
        r.setCapacity(capacity);
        r.setPrice(price);
        r.setAvailable(available);

        RoomDAO dao = new RoomDAO();
        dao.addRoom(r);

        res.sendRedirect("admin/manage_rooms.jsp");
    }
}