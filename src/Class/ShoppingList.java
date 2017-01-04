package Class;

import java.util.ArrayList;

/**
 * Created by 王承 on 2017/1/2.
 */
public class ShoppingList {

    private String L_ID;
    private String Co_ID;
    private String L_Time;
    private String L_Count;
    private String Cu_Phone;

    public String getCo_ID() {
        return Co_ID;
    }

    public String getL_Count() {
        return L_Count;
    }

    public String getL_ID() {
        return L_ID;
    }

    public void setCo_ID(String co_ID) {
        Co_ID = co_ID;
    }

    public String getCu_Phone() {
        return Cu_Phone;
    }

    public String getL_Time() {
        return L_Time;
    }

    public void setCu_Phone(String cu_Phone) {
        Cu_Phone = cu_Phone;
    }

    public void setL_Count(String l_Count) {
        L_Count = l_Count;
    }

    public void setL_ID(String l_ID) {
        L_ID = l_ID;
    }

    public void setL_Time(String l_Time) {
        L_Time = l_Time;
    }
}
