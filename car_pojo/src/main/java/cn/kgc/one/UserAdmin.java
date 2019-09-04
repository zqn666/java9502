package cn.kgc.one;

public class UserAdmin {
    private Integer id;
    private String roleName;
    private String roles;
    private String username;
    private String email;
    private String password;
    private Integer phoneNum;

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleNum) {
        this.roleName = roleNum;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(Integer phoneNum) {
        this.phoneNum = phoneNum;
    }

    @Override
    public String toString() {
        return "UserAdmin{" +
                "id=" + id +
                ", roleName='" + roleName + '\'' +
                ", rolse='" + roles + '\'' +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", phoneNum=" + phoneNum +
                '}';
    }
}
