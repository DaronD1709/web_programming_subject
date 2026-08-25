package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;


/**
 *
 * @author darond
 */
@WebServlet(urlPatterns = {"/emailList"})
public class EmailListServlet extends HttpServlet  {
 
    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
                           throws ServletException, IOException {
 
        String url = "/index.html";

        String action = request.getParameter("action");
        if (action == null) {
            action = "join";
        }

        if (action.equals("join")) {
            url = "/index.html";    
        }
        else if (action.equals("add")) {
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String dateOfBirth = request.getParameter("dateOfBirth");
            String source = request.getParameter("source");
            String[] announcements = request.getParameterValues("announcements");
            String contactBy = request.getParameter("contactBy");

            User user = new User(firstName, lastName, email);
            user.setDateOfBirth(dateOfBirth);
            user.setSource(source);
            user.setAnnouncements(announcements);
            user.setContactBy(contactBy);
//            UserDB.insert(user);

            request.setAttribute("user", user);
            url = "/thanks.jsp";
        }
 
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }
 
    @Override
    protected void doGet(HttpServletRequest request,
                          HttpServletResponse response)
                          throws ServletException, IOException {
        doPost(request, response);
    }
}