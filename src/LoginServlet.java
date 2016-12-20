import Class.AccountBean;
import Class.Connector;

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

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        accountBean.setEmail(email);
        accountBean.setPassword(password);

        String u_name;
        String u_password = "";

        try {
            Connection connection = Connector.GetInstance().getConn();
            Statement statement = connection.createStatement();

            String sql = "SELECT * FROM user WHERE U_Email = '" + email + "'";

            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()){
                u_password = resultSet.getString("U_Pwd");
                u_name = resultSet.getString("U_Name");
                accountBean.setUsername(u_name);
            }

            resultSet.close();
            //connection.close();

        } catch(SQLException e) {
            //数据库连接失败异常处理
            System.out.println("Fail");
            e.printStackTrace();
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        if ((email!=null)){
            if ((password!=null)&&(password.trim().equals(u_password))){
                session.setAttribute("account",accountBean);

                String login_suc = "index.jsp";
                //response.sendRedirect(login_suc);
                request.getRequestDispatcher("").forward(request,response);
                return;
            }
        }

        String login_fail = "fail.jsp";
        response.sendRedirect(login_fail);
        return;
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
