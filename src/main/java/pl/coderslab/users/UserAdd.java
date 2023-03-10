package pl.coderslab.users;

import pl.coderslab.model.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.print.Book;
import java.io.IOException;

@WebServlet("/user/add")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/users/add.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String newname = request.getParameter("newName");
        String newemail = request.getParameter("newEmail");
        String newpassword = request.getParameter("newPassword");

        User user = new User(newname, newpassword, newemail);
        UserDao userDao = new UserDao();

        request.setAttribute("createdUser",userDao.create(user));

        response.sendRedirect(request.getContextPath() + "/user/list");

    }

}
