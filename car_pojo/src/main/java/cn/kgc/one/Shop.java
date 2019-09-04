package cn.kgc.one;

import java.io.Serializable;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/27 9:03
 */
public class Shop implements Serializable{
    private Integer sid;    //店面id
    private String shop_num;
    private String shop_name;   //店面名
    private String shop_address;    //店面地址
    private String shop_tel;    //店面电话

    public String getShop_num() {
        return shop_num;
    }

    public void setShop_num(String shop_num) {
        this.shop_num = shop_num;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getShop_name() {
        return shop_name;
    }

    public void setShop_name(String shop_name) {
        this.shop_name = shop_name;
    }

    public String getShop_address() {
        return shop_address;
    }

    public void setShop_address(String shop_address) {
        this.shop_address = shop_address;
    }

    public String getShop_tel() {
        return shop_tel;
    }

    public void setShop_tel(String shop_tel) {
        this.shop_tel = shop_tel;
    }

    @Override
    public String toString() {
        return "Shop{" +
                "sid=" + sid +
                ", shop_name='" + shop_name + '\'' +
                ", shop_address='" + shop_address + '\'' +
                ", shop_tel='" + shop_tel + '\'' +
                '}';
    }
}
