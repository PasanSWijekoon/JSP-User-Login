/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author pasan
 */
@WebServlet(name = "User_Login", urlPatterns = {"/User_Login"})
public class User_Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String mobile = request.getParameter("mobile");

        String password = request.getParameter("password");

        HashMap<String, User> userMap = (HashMap<String, User>) request.getServletContext().getAttribute("userMap");

        if (userMap.containsKey(mobile)) {
            
            User user = userMap.get(mobile);

            if (user.getPassword().equals(password)) {
                
                request.getSession().setAttribute("user", user);
                response.sendRedirect("index.jsp");

            } else {
                response.sendRedirect("user_login.jsp?msg=error2");
            }

        } else {
            response.sendRedirect("user_login.jsp?msg=error2");
        }

    }

}
