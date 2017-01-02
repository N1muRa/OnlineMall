import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Class.AccountBean;
import Class.Connector;

/**
 * Created by 王承 on 2016/12/19.
 */
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        AccountBean accountBean = new AccountBean();

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        accountBean.setUsername(firstName + " " + lastName);
        accountBean.setEmail(email);
        accountBean.setPassword(password);

        try {
            //Connection connection = Connector.GetInstance().getConn();
            //Statement statement = connection.createStatement();

            String sql = "INSERT INTO user(U_Name, U_Pwd, U_Email) VALUES('" + accountBean.getUsername() + "', '" + accountBean.getPassword() + "', '" + accountBean.getEmail() + "')hhh";

            //System.out.println("sql:"+sql);

            //int res = statement.executeUpdate(sql);

            int res = Connector.GetInstance().doInsert(sql);

            if (res > 0) {
                System.out.println("Success!");
                session.setAttribute("account", accountBean);
                response.sendRedirect("index.jsp");
                return;
            } else {
                System.out.println("Fail!");
            }
            //connection.close();

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        response.sendRedirect("fail.jsp");

        return;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
