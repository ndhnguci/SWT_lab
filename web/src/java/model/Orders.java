/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Orders {
    
    private int id;
    private Customers cusID;
    private String date;
    private long total;

    public Orders() {
    }

    public Orders(int id, Customers cusID, String date, long total) {
        this.id = id;
        this.cusID = cusID;
        this.date = date;
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Customers getCusID() {
        return cusID;
    }

    public void setCusID(Customers cusID) {
        this.cusID = cusID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Orders{" + "id=" + id + ", cusID=" + cusID + ", date=" + date + ", total=" + total + '}';
    }
    
    
}
