package Class;

import sun.security.jca.GetInstance;

import java.sql.*;

/**
 * Created by 王承 on 2016/12/18.
 */
public class Connector {

    private Connection connection;

    private String driver;

    private String url;

    private String user;

    private String password;

    private static Connector connector;

    public static Connector GetInstance(){
        if (connector == null){
            connector = new Connector();
        }
        return connector;
    }

    private Connector(){
        driver = "com.mysql.jdbc.Driver";
        url = "jdbc:mysql://localhost:3306/j2ee";
        user = "root";
        password = "";

        setConnection();
    }

    public String getDriver(){
        return driver;
    }

    public String getUrl(){
        return url;
    }

    public String getUser(){
        return user;
    }

    public String getPassword(){
        return password;
    }

    public Connection getConn() {
        return connection;
    }

    private void setConnection(){

        connection = null;

        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            connection= DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    public ResultSet doSelect(String sql){

        try {
            Connection connection = this.getConn();

            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);

            return resultSet;

        } catch(SQLException e) {
            //数据库连接失败异常处理
            System.out.println("Fail");
            e.printStackTrace();
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        return null;
    }

    public int doInsert(String sql){
        try {
            Connection connection = this.getConn();

            Statement statement = connection.createStatement();

            int res = statement.executeUpdate(sql);

            return res;

        } catch(SQLException e) {
            //数据库连接失败异常处理
            System.out.println("Fail");
            e.printStackTrace();
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        return 0;
    }

    public int doUpdate(String sql){
        try {
            Connection connection = this.getConn();

            Statement statement = connection.createStatement();

            int res = statement.executeUpdate(sql);

            return res;

        } catch(SQLException e) {
            //数据库连接失败异常处理
            e.printStackTrace();
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        return 0;
    }

    public void closeAll(ResultSet resultSet, Statement statement, Connection connection){
        if (resultSet!=null){
            try {
                resultSet.close();
            }catch (SQLException e){
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        if (statement!=null){
            try {
                statement.close();
            }catch (SQLException e){
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        if (connection!=null){
            try {
                connection.close();
            }catch (SQLException e){
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
}
