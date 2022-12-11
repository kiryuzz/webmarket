package mvc.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection_Input_DB {
    public  static Connection getConnection() throws SQLException, ClassNotFoundException {
        Connection conn = null;

        String url = "jdbc:mysql://주소";
        String user = "DB 유저 이름";
        String password = "DB 유저 비번";

        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

        return conn;
    }
}
