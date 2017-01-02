import Class.AccountBean;
import Class.Connector;
import Class.ShoppingCart;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;

/**
 * Created by 王承 on 2016/12/18.
 */
public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        HttpSession session = request.getSession();
        AccountBean accountBean = new AccountBean();

        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        accountBean.setPhone(phone);
        accountBean.setPassword(password);

        String u_name = "";
        String u_password = "";

        try {

            String sql = "SELECT * FROM user WHERE U_Phone = '" + phone + "'";

            ResultSet resultSet = Connector.GetInstance().doSelect(sql);

            while (resultSet.next()) {
                u_password = resultSet.getString("U_Pwd");
                u_name = resultSet.getString("U_Name");
                accountBean.setUsername(u_name);
            }

            resultSet.close();
            //connection.close();

        } catch (SQLException e) {
            //数据库连接失败异常处理
            System.out.println("Fail");
            e.printStackTrace();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        if ((phone != null)) {
            if ((password != null) && (password.trim().equals(u_password))) {
                session.setAttribute("account", accountBean);

                ShoppingCart shoppingCart = new ShoppingCart();
                shoppingCart.setUser(u_name);
                session.setAttribute("sc",shoppingCart);

                request.getRequestDispatcher("").forward(request, response);
                return;
            }
        }

        String login_fail = "fail.jsp";
        response.sendRedirect(login_fail);
        return;
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request, response);
    }
}
