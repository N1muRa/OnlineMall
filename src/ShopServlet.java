import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Vector;
import Class.*;

/**
 * Created by 王承 on 2017/1/2.
 */
public class ShopServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        int id = Integer.parseInt(request.getParameter("id").toString().trim());
        int quantity = Integer.parseInt(request.getParameter("quantity").toString().trim());

        Vector<Commodity> commodities = (Vector<Commodity>) session.getAttribute("all");
        ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("sc");
        System.out.println(shoppingCart.getSumPrice());

        for (int i=0;i<commodities.size();i++){
            Commodity commodity = commodities.get(i);
            if (id == commodity.getID()){
                shoppingCart.add(commodity,commodity.getPrice(),quantity);
            }
        }


        session.removeAttribute("sc");
        session.setAttribute("sc", shoppingCart);
        shoppingCart = (ShoppingCart) session.getAttribute("sc");
        System.out.println(shoppingCart.getNum()+" "+shoppingCart.getSumPrice());
        response.sendRedirect("_products.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
