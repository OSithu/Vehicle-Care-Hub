package next.xadmin.login.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import next.xadmin.login.bean.LoginBean;
//This class handles database operations related to user authentication
public class LoginDao {

	// Database configurations
    private String dbUrl = "jdbc:mysql://localhost:3306/vehiclecare";
    private String dbUname = "root";
    private String dbPassword = "1234";
    private String dbDriver = "com.mysql.jdbc.Driver";

     // Method to load the MySQL driver
    public void loadDriver(String dbDriver) {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // Method to establish a database connection
    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    // Method to validate user login credentials
    public boolean validate(LoginBean loginBean) {
        boolean status = false;

        loadDriver(dbDriver);
        Connection con = getConnection();

        if (con != null) {
            String sql = "SELECT * FROM login WHERE username = ? AND password = ?";
            PreparedStatement ps;
            try {
                ps = con.prepareStatement(sql);
                ps.setString(1, loginBean.getUsername());
                ps.setString(2, loginBean.getPassword());
                ResultSet rs = ps.executeQuery();
                status = rs.next();
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return status;
    }
}
