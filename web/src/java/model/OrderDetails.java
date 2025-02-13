/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class OrderDetails {

    private Orders oID;
    private Products pID;
    private int quantity;
    private long price;

    public OrderDetails() {
    }

    public OrderDetails(Orders oID, Products pID, int quantity, long price) {
        this.oID = oID;
        this.pID = pID;
        this.quantity = quantity;
        this.price = price;
    }

    public Orders getoID() {
        return oID;
    }

    public void setoID(Orders oID) {
        this.oID = oID;
    }

    public Products getpID() {
        return pID;
    }

    public void setpID(Products pID) {
        this.pID = pID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "OrderDetails{" + "oID=" + oID + ", pID=" + pID + ", quantity=" + quantity + ", price=" + price + '}';
    }

}
