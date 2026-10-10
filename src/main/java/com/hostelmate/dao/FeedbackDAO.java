package com.hostelmate.dao;

import java.sql.*;

public class FeedbackDAO {

    public boolean addFeedback(int studentId, int rating, String message){
        boolean status = false;

        try{
            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO feedback(student_id, rating, message) VALUES (?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, studentId);
            ps.setInt(2, rating);
            ps.setString(3, message);

            int row = ps.executeUpdate();
            if(row > 0) status = true;

        }catch(Exception e){
            e.printStackTrace();
        }

        return status;
    }
}