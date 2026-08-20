package com.utehy.webapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/test-db")
public class TestDbServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String url = System.getenv().getOrDefault("DB_URL", "jdbc:postgresql://localhost:5432/hello_servlet_db");
        String user = System.getenv().getOrDefault("DB_USER", "darond");
        String password = System.getenv().getOrDefault("DB_PASSWORD", "");

        try {
            Class.forName("org.postgresql.Driver");

            try (Connection conn = DriverManager.getConnection(url, user, password)) {
                out.println("<h1 style='color:green'>Kết nối PostgreSQL THÀNH CÔNG!</h1>");
                out.println("<p>Database: " + conn.getCatalog() + "</p>");
            }
        } catch (ClassNotFoundException e) {
            out.println("<h1 style='color:red'>Không tìm thấy driver PostgreSQL</h1>");
            out.println("<pre>" + e.getMessage() + "</pre>");
        } catch (SQLException e) {
            out.println("<h1 style='color:red'>Kết nối THẤT BẠI</h1>");
            out.println("<pre>" + e.getMessage() + "</pre>");
        }
    }
}