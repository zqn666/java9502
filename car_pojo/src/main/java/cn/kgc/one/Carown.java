package cn.kgc.one;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/28 19:46
 */

//车主表
public class Carown {
    private Integer coid;       // id
    private String oname;       //车主姓名
    private String otel;        //车主电话
    private String otypeNum;    //车主身份证号

    public Integer getCoid() {
        return coid;
    }

    public void setCoid(Integer coid) {
        this.coid = coid;
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public String getOtel() {
        return otel;
    }

    public void setOtel(String otel) {
        this.otel = otel;
    }

    public String getOtypeNum() {
        return otypeNum;
    }

    public void setOtypeNum(String otypeNum) {
        this.otypeNum = otypeNum;
    }

    @Override
    public String toString() {
        return "Carown{" +
                "coid=" + coid +
                ", oname='" + oname + '\'' +
                ", otel='" + otel + '\'' +
                ", otypeNum='" + otypeNum + '\'' +
                '}';
    }
}
