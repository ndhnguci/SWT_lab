/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Cart;
import model.Item;
import model.Products;

/**
 *
 * @author Admin
 */
public class CartServlet extends HttpServlet {
    private static final String TOTAL_ATTRIBUTE = "total";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double total = 0;
        HttpSession session = request.getSession();
        Cart cart;
        Object o = session.getAttribute("cart");
        if (o != null) {
            cart = (Cart) o;
        } else {
            cart = new Cart();
        }
        List<Item> list = cart.getItems();
        for (Item item : list) {
            total += (item.getPrice() * item.getQuantity());
        }
        request.setAttribute(TOTAL_ATTRIBUTE, total);

        request.getRequestDispatcher("Views/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart;
        Object o = session.getAttribute("cart");
        if (o != null) {
            cart = (Cart) o;
        } else {
            cart = new Cart();
        }
        String tnum = request.getParameter("num");
        String tid = request.getParameter("id");
        int num = Integer.parseInt(tnum);
        int id = Integer.parseInt(tid);
        String buy = request.getParameter("buy");
        String addtocart = request.getParameter("addtocart");

        if (buy != null || addtocart != null) {
            Products p = DAO.INSTANCE.getProductById(id);
            long price = p.getPrice();
            Item t = new Item(p, num, price);
            cart.addItem(t);
            List<Item> list = cart.getItems();
            double total = 0;
            for (Item item : list) {
                total += (item.getPrice() * item.getQuantity());
            }
            request.setAttribute(TOTAL_ATTRIBUTE, total);
            session.setAttribute("cart", cart);
            session.setAttribute("size", list.size());

            if (buy != null) {
                request.getRequestDispatcher("Views/cart.jsp").forward(request, response);
            } else {
                response.sendRedirect("fruit?cp=1");
            }
        }
    }
}

