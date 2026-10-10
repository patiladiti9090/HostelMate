package com.hostelmate.servlet;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.MultipartConfig;

import com.hostelmate.dao.ComplaintDAO;
import com.hostelmate.model.Complaint;
import com.hostelmate.model.Student;

@MultipartConfig
public class ComplaintServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        Student s = (Student) session.getAttribute("student");

        String category = req.getParameter("category");
        String description = req.getParameter("description");

        Part filePart = req.getPart("image");
        String fileName = filePart.getSubmittedFileName();

        String uploadPath = getServletContext().getRealPath("") + "images";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        filePart.write(uploadPath + File.separator + fileName);

        Complaint c = new Complaint();
        c.setStudentId(s.getId());
        c.setCategory(category);
        c.setDescription(description);
        c.setImage(fileName);

        ComplaintDAO dao = new ComplaintDAO();
        boolean status = dao.addComplaint(c);

        if(status){
            res.sendRedirect("complaint.jsp?success=1");
        } else {
            res.sendRedirect("complaint.jsp?error=1");
        }
    }
}