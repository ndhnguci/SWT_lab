/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.List;

/**
 *
 * @author Admin
 */
public class OrderHistory {

    private int orderId;
    private Customers customer;
    private String orderDate;
    private long orderTotal;
    private List<OrderDetails> orderDetailsList;

    public OrderHistory() {
    }

    public OrderHistory(int orderId, Customers customer, String orderDate, long orderTotal, List<OrderDetails> orderDetailsList) {
        this.orderId = orderId;
        this.customer = customer;
        this.orderDate = orderDate;
        this.orderTotal = orderTotal;
        this.orderDetailsList = orderDetailsList;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Customers getCustomer() {
        return customer;
    }

    public void setCustomer(Customers customer) {
        this.customer = customer;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public long getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(long orderTotal) {
        this.orderTotal = orderTotal;
    }

    public List<OrderDetails> getOrderDetailsList() {
        return orderDetailsList;
    }

    public void setOrderDetailsList(List<OrderDetails> orderDetailsList) {
        this.orderDetailsList = orderDetailsList;
    }

    @Override
    public String toString() {
        return "OrderHistory{" + "orderId=" + orderId + ", customer=" + customer + ", orderDate=" + orderDate + ", orderTotal=" + orderTotal + ", orderDetailsList=" + orderDetailsList + '}';
    }
}
