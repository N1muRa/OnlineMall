package Class;

import java.util.ArrayList;

/**
 * Created by 王承 on 2017/1/2.
 */
public class ShoppingCart {

    private int num;
    private double sumPrice;
    private ArrayList list;
    private String user;

    public ShoppingCart() {
        num = 0;
        sumPrice = 0.0;
        list = new ArrayList();
        user = null;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getUser() {
        return user;
    }

    public int getNum() {
        return num;
    }

    public ArrayList getList() {
        return list;
    }

    public double getSumPrice() {
        return sumPrice;
    }

    public void setList(ArrayList list) {
        this.list = list;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public void setSumPrice(double sumPrice) {
        this.sumPrice = sumPrice;
    }

    public void add(Commodity commodity, double price,int quantity) {
        list.add(commodity);
        sumPrice += price;
        num=num+quantity;
    }

    public void empty() {
        list.clear();
        num = 0;
        sumPrice = 0.0;
    }

    public Commodity getCommodity(int pos){
        return (Commodity)list.get(pos);
    }
}
