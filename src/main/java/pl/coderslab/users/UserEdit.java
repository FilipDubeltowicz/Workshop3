package pl.coderslab.users;

import pl.coderslab.model.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        System.out.println(id);

        UserDao userDao = new UserDao();
        request.setAttribute("user", userDao.findById(Long.parseLong(id)));

        getServletContext().getRequestDispatcher("/users/edit.jsp")
                .forward(request, response);


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String newname = request.getParameter("newName");
        String newemail = request.getParameter("newEmail");
        String newpassword = request.getParameter("newPassword");
        Long id = Long.parseLong(request.getParameter("id"));

        User user = new User(id,newname, newpassword, newemail);
        UserDao userDao = new UserDao();

        request.setAttribute("updateUser",userDao.update(user));

        response.sendRedirect(request.getContextPath() + "/user/list");
    }
}
