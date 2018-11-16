package pl.coderslab.warsztat2krks05.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtils {
    public static Connection getConnection()
                throws SQLException {
        Connection conn = DriverManager
          .getConnection("jdbc:mysql://localhost:3306/warsztat2krks05?useSSL=false",
                         "root", "");

        return conn;
    }
}
