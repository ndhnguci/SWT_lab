/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Customers {

    private int id;
    private String fullName, email, phoneNumber, user, pass, address;
    private boolean role;

    public Customers() {
    }

    public Customers(int id, String fullName, String email, String phoneNumber, String user, String pass, String address, boolean role) {
        this.id = id;
        this.fullName = fullName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.user = user;
        this.pass = pass;
        this.address = address;
        this.role = role;
    }

    public Customers(String fullName, String email, String phoneNumber, String user, String pass, String address) {
        this.fullName = fullName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.user = user;
        this.pass = pass;
        this.address = address;
    }

    public Customers(int id, String fullName, String email, String phoneNumber, String address) {
        this.id = id;
        this.fullName = fullName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.address = address;
    }

    public Customers(String user, String pass, String fullName, boolean role, int id) {
        this.user = user;
        this.pass = pass;
        this.fullName = fullName;
        this.role = role;
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

    public String checkGender() {
        if (this.role == true) {
            return "1";
        } else {
            return "0";
        }
    }

    @Override
    public String toString() {
        return "Customers{" + "id=" + id + ", fullName=" + fullName + ", email=" + email + ", phoneNumber=" + phoneNumber + ", user=" + user + ", pass=" + pass + ", address=" + address + ", role=" + role + '}';
    }

}
