package next.xadmin.login.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import next.xadmin.login.bean.LoginBean;
import next.xadmin.login.database.LoginDao;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

     // Handles the POST request for user login
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        LoginDao loginDao = new LoginDao();
        
     // Create an instance of LoginDao for database operations
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
     // Create a LoginBean and set the received username and password 
        LoginBean loginBean = new LoginBean();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        if (loginDao.validate(loginBean)) {
            response.sendRedirect("admin.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}
