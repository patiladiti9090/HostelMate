package com.hostelmate.model;

public class Room {

    private int id;
    private String roomType;
    private int capacity;
    private double price;
    private int available;

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getRoomType() { return roomType; }
    public void setRoomType(String roomType) { this.roomType = roomType; }

    public int getCapacity() { return capacity; }
    public void setCapacity(int capacity) { this.capacity = capacity; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public int getAvailable() { return available; }
    public void setAvailable(int available) { this.available = available; }
}