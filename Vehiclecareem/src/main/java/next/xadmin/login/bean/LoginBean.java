package next.xadmin.login.bean;

//A simple Java Bean representing login credentials
public class LoginBean {
    private String username; // Represents the username entered during login
    private String password; // Represents the password entered during login

  //getters and setters for variables
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
