import java.sql.*;

public class DBTest {
    public static void main(String[] args) {
        try (Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/mysql", "root", "root")) {
            System.out.println("Connection OK!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}