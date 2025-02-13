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
import model.Pagination;
import model.*;

/**
 *
 * @author Admin
 */
public class FruitServlet extends HttpServlet {

    //if (customer.isRole() == false || customer == null)
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("listC", DAO.INSTANCE.getAllCategories());
        Customers customer = (Customers) session.getAttribute("account");
        List<Products> p = null;
        if (customer != null && customer.isRole() == true) {
            p = DAO.INSTANCE.manageProductsByAddmin();
        } else  {
            p = DAO.INSTANCE.getAllProducts();
        }
        request.setAttribute("products", p);

        // paging
        if (session.getAttribute("page") == null) {
            Pagination Page = new Pagination(p.size(), 6, 1);
            session.setAttribute("page", Page);
            request.setAttribute("products", DAO.INSTANCE.getProductsByPage(Page.getCurrentPage(), Page.getPageLimit(), p));

        } else if (request.getParameter("cp") != null) {
            int cp = Integer.parseInt(request.getParameter("cp"));
            Pagination Page = new Pagination(p.size(), 6, cp);
            session.setAttribute("page", Page);
            request.setAttribute("products", DAO.INSTANCE.getProductsByPage(Page.getCurrentPage(), Page.getPageLimit(), p));
        }

        request.getRequestDispatcher("Views/fruit.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("listC", DAO.INSTANCE.getAllCategories());
        doGet(request, response);
    }

}
