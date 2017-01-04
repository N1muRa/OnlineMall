import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import Class.*;

/**
 * Created by 王承 on 2017/1/2.
 */
public class ShopServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        int id = Integer.parseInt(request.getParameter("id").trim());
        int quantity = Integer.parseInt(request.getParameter("quantity").trim());

        Vector<Commodity> commodities = (Vector<Commodity>) session.getAttribute("all");
        AccountBean accountBean = (AccountBean) session.getAttribute("account");

        for (int i=0;i<commodities.size();i++){
            Commodity commodity = commodities.get(i);
            if (id == commodity.getID()){
                try {
                    Date date=new Date();
                    DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    String time=format.format(date);
                    String sql = "INSERT INTO list ( Co_ID, L_Time, L_Note, L_Count, Cu_Phone ) VALUES ( '" + id + "', '" + time +"', 0, '" + quantity + "', '" + accountBean.getPhone() + "' )";
                    System.out.println(sql);
                    int res = Connector.GetInstance().doInsert(sql);
                    if (res > 0){
                        System.out.println("Success");
                    }
                }catch (Exception e) {
                    // TODO: handle exception
                    e.printStackTrace();
                }
            }
        }

        List<ShoppingList> commodityList = new ArrayList<ShoppingList>();

        try {
            String sql = "SELECT * FROM list WHERE L_Note = 0 ORDER BY L_ID DESC limit 3";
            ResultSet resultSet = Connector.GetInstance().doSelect(sql);
            while (resultSet.next()){
                ShoppingList shoppingList = new ShoppingList();
                shoppingList.setCo_ID(resultSet.getString("Co_ID"));
                shoppingList.setL_Count(resultSet.getString("L_Count"));
                shoppingList.setL_Time(resultSet.getString("L_Time"));
                shoppingList.setCu_Phone(resultSet.getString("Cu_Phone"));

                commodityList.add(shoppingList);
            }
        } catch (SQLException e) {
            //数据库连接失败异常处理
            System.out.println("Fail");
            e.printStackTrace();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        session.removeAttribute("SL");
        session.setAttribute("SL", commodityList);

        response.sendRedirect("checkout.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
