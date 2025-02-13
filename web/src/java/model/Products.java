/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Products {

    private int id, categoryID, quantity;
    private String name, description, image;
    private long price;
    private int status;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Products(int id, int categoryID, int quantity, String name, String description, String image, long price, int status) {
        this.id = id;
        this.categoryID = categoryID;
        this.quantity = quantity;
        this.name = name;
        this.description = description;
        this.image = image;
        this.price = price;
        this.status = status;
    }

    public Products() {
    }

    public Products(int id, int categoryID, int quantity, String name, String description, String image, long price) {
        this.id = id;
        this.categoryID = categoryID;
        this.quantity = quantity;
        this.name = name;
        this.description = description;
        this.image = image;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Products{" + "id=" + id + ", categoryID=" + categoryID + ", quantity=" + quantity + ", name=" + name + ", description=" + description + ", image=" + image + ", price=" + price + '}';
    }

}
