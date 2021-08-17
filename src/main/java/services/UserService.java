package services;

import models.User;

import java.sql.*;
import java.util.ArrayList;

public class UserService {
    public Connection sqlConnection;

    public UserService() {
        String connectionString = "jdbc:mysql://localhost/learnjava";
        String username = "root";
        String password = "";

        try {
            sqlConnection = DriverManager.getConnection(connectionString, username, password);
            System.out.println("Connect Database Successful");
        } catch (SQLException e) {
            System.out.println("ERROR Connection !");
            e.printStackTrace();
        }
    }

    public ArrayList<User> getAllUsers() {
        ArrayList<User> users = new ArrayList<User>();

        try {
            Statement statement = sqlConnection.createStatement();
            String sql = "SELECT * FROM `users` ORDER BY `id` ASC";
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                users.add(new User(
                        rs.getInt("id"),
                        rs.getString("full_name"),
                        rs.getString("email"),
                        rs.getString("created_at")
                ));
            }

            rs.close();
            statement.close();

        } catch (SQLException e) {
            System.out.println("ERROR Get All User!");
            e.printStackTrace();
        }

        return users;
    }

    public boolean createUser(User user) {
        String sql = "INSERT INTO `users` (`full_name`, `email`) VALUES (?, ?)";

        try {
            PreparedStatement PreparedStatement = sqlConnection.prepareStatement(sql);
            PreparedStatement.setString(1, user.getFullName());
            PreparedStatement.setString(2, user.getEmail());

            int rowAffected = PreparedStatement.executeUpdate();

            if (rowAffected > 0) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("ERROR Insert !");
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteUser(int id) {
        String sql = "DELETE FROM `users` WHERE id = ?";

        try {
            PreparedStatement PreparedStatement = sqlConnection.prepareStatement(sql);
            PreparedStatement.setInt(1, id);

            int rowAffected = PreparedStatement.executeUpdate();

            if (rowAffected > 0) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("ERROR Delete !");
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        User data = new User("Phuc", "phuc.px.a@gmail.com");
        new UserService().deleteUser(102);
    }
}
