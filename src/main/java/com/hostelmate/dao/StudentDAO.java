package com.hostelmate.dao;

import java.sql.*;
import com.hostelmate.model.Student;

public class StudentDAO {

    public boolean register(Student s) {
        boolean status = false;

        try {
            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO students(name,email,mobile,password) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getMobile());
            ps.setString(4, s.getPassword());

            int row = ps.executeUpdate();

            System.out.println("Rows inserted: " + row);

            if (row > 0) {
                status = true;
            }

        } catch (Exception e) {
            System.out.println("ERROR IN DAO:");
            e.printStackTrace();
        }

        return status;
    }

    public Student login(String email, String password) {
        Student s = null;

        try {
            Connection con = DBConnection.getConnection();

            String query = "SELECT * FROM students WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                s = new Student();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return s;
    }
}