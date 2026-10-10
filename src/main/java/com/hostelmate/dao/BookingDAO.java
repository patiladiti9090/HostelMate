package com.hostelmate.dao;

import java.sql.*;
import com.hostelmate.model.Booking;

public class BookingDAO {

    public void addBooking(Booking b) {

        try {
            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO bookings(student_id,room_id,duration,total_amount) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, b.getStudentId());
            ps.setInt(2, b.getRoomId());
            ps.setString(3, b.getDuration());
            ps.setDouble(4, b.getTotalAmount());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}