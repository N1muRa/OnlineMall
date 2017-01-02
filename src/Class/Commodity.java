package Class;

/**
 * Created by 王承 on 2016/12/19.
 */
public class Commodity {

    private int ID = 0;
    private String name = "";
    private String color = "";
    private String func = "";
    private int price = 0;
    private int number = 0;
    private String brand = "";
    private String image = "";

    public String getColor() {
        return color;
    }

    public String getFunc() {
        return func;
    }

    public int getID() {
        return ID;
    }

    public String getName() {
        return name;
    }

    public String getImage() {
        return image;
    }

    public int getNumber() {
        return number;
    }

    public int getPrice() {
        return price;
    }

    public String getBrand() {
        return brand;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setFunc(String func) {
        this.func = func;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }
}
