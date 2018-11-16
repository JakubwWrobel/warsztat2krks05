package pl.coderslab.warsztat2krks05;

import pl.coderslab.warsztat2krks05.model.User;
import pl.coderslab.warsztat2krks05.utils.DbUtils;

import java.sql.Connection;
import java.sql.SQLException;

public class Main {

    public static void main(String[] args) {
        try {
            Connection conn = DbUtils.getConnection();
            User u = User.loadUserById(conn, 1);
            System.out.println(u.toString());
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
