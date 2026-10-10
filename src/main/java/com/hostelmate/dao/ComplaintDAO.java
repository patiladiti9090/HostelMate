package com.hostelmate.dao;

import java.sql.*;
import com.hostelmate.model.Complaint;

public class ComplaintDAO {

    public boolean addComplaint(Complaint c) {
        boolean status = false;

        try {
            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO complaints(student_id, category, description, image) VALUES (?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, c.getStudentId());
            ps.setString(2, c.getCategory());
            ps.setString(3, c.getDescription());
            ps.setString(4, c.getImage());

            int row = ps.executeUpdate();
            if(row > 0) status = true;

        } catch(Exception e){
            e.printStackTrace();
        }

        return status;
    }
}