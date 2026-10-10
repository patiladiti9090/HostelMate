package com.hostelmate.dao;
import java.util.List;
import java.util.ArrayList;
import java.sql.*;
import java.util.*;
import com.hostelmate.model.Room;

public class RoomDAO {

    // GET ALL ROOMS
    public List<Room> getAllRooms() {

        List<Room> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();

            String query = "SELECT * FROM rooms";
            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Room r = new Room();
                r.setId(rs.getInt("id"));
                r.setRoomType(rs.getString("room_type"));
                r.setCapacity(rs.getInt("capacity"));
                r.setPrice(rs.getDouble("price"));
                r.setAvailable(rs.getInt("available"));

                list.add(r);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // ADD ROOM
    public void addRoom(Room r) {

        try {
            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO rooms(room_type,capacity,price,available) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, r.getRoomType());
            ps.setInt(2, r.getCapacity());
            ps.setDouble(3, r.getPrice());
            ps.setInt(4, r.getAvailable());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // DELETE ROOM
    public void deleteRoom(int id) {

        try {
            Connection con = DBConnection.getConnection();

            String query = "DELETE FROM rooms WHERE id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, id);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}