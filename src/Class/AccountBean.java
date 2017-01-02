package Class;

/**
 * Created by 王承 on 2016/12/18.
 */
public class AccountBean {

    private String username;
    private String password;
    private String phone;
    private String email;

    public AccountBean() {
        username = "";
        password = "";
        phone = "";
        email = "";
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email1) {
        email = email1;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password1) {
        password = password1;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username1) {
        username = username1;
    }
}
