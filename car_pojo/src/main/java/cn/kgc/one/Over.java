package cn.kgc.one;

public class Over {
    private int oid;
    private String username;
    private String reply;

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }

    @Override
    public String toString() {
        return "Over{" +
                "oid=" + oid +
                ", username='" + username + '\'' +
                ", reply='" + reply + '\'' +
                '}';
    }
}
