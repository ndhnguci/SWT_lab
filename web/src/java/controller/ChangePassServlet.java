/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customers;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ChangePassServlet", urlPatterns = {"/ChangePass"})
public class ChangePassServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Views/changePass.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String u = request.getParameter("user");
        String op = request.getParameter("opass");
        String p = request.getParameter("npass");

        Customers a = DAO.INSTANCE.checkAcc(u, op);
        if (a == null) {
            String ms1 = "Old password is incorrect!";
            request.setAttribute("ms1", ms1);
            request.getRequestDispatcher("Views/changePass.jsp").forward(request, response);
        } else {
            Customers account = new Customers(u, p, a.getFullName(), a.isRole(), a.getId());
            DAO.INSTANCE.changePass(account);
            HttpSession session = request.getSession();
            session.removeAttribute("account");
            request.setAttribute("ms2", "Successful change. Please login again!"); 
            request.getRequestDispatcher("Views/login.jsp").forward(request, response);
        }
    }

}
