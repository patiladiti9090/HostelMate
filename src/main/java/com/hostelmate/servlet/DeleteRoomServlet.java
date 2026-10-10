package com.hostelmate.servlet;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import com.hostelmate.dao.RoomDAO;

public class DeleteRoomServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));

        RoomDAO dao = new RoomDAO();
        dao.deleteRoom(id);

        res.sendRedirect("admin/manage_rooms.jsp");
    }
}