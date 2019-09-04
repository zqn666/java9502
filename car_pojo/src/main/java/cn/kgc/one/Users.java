package cn.kgc.one;

public class Users {

    private int uid;
    private String uname;
    private String pwd;
    private Integer tel;
    private String name;
    private String paperType;
    private String paperNum;
    private String email;
    private Integer counts;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Integer getTel() {
        return tel;
    }

    public void setTel(Integer tel) {
        this.tel = tel;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPaperType() {
        return paperType;
    }

    public void setPaperType(String paperType) {
        this.paperType = paperType;
    }

    public String getPaperNum() {
        return paperNum;
    }

    public void setPaperNum(String paperNum) {
        this.paperNum = paperNum;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getCounts() {
        return counts;
    }

    public void setCounts(Integer counts) {
        this.counts = counts;
    }

    @Override
    public String toString() {
        return "Users{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", pwd='" + pwd + '\'' +
                ", tel=" + tel +
                ", name='" + name + '\'' +
                ", paperType='" + paperType + '\'' +
                ", paperNum='" + paperNum + '\'' +
                ", email='" + email + '\'' +
                ", counts=" + counts +
                '}';
    }
}
