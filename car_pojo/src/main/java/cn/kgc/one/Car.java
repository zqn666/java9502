package cn.kgc.one;

import java.io.Serializable;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/26 19:35
 */
public class Car implements Serializable{
    private Integer cid;    //车辆id
    private String ctype;   //品牌名
    private String cname;   //车型名
    private String cc;  //排量，变速
    private Integer boxNum;     //箱数
    private Integer peopleNum;  //乘坐人数
    private String cDesc;       //车辆标签描述
    private Integer h_price;    //时租价
    private Integer d_price;    //日组价
    private String cNum;        //车牌
    private Integer cStatus;    //车辆状态  0 空闲    1 预约    2已租
    private String images;      //图片保存地址
    private Integer shopid;
    private Shop shop;            //所属店面
    private String city;           //所属城市
    private Integer ownid;
    private Carown carown;          //车主

    public Integer getShopid() {
        return shopid;
    }

    public void setShopid(Integer shopid) {
        this.shopid = shopid;
    }

    public Integer getOwnid() {
        return ownid;
    }

    public void setOwnid(Integer ownid) {
        this.ownid = ownid;
    }

    public Shop getShop() {
        return shop;
    }

    public void setShop(Shop shop) {
        this.shop = shop;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Carown getCarown() {
        return carown;
    }

    public void setCarown(Carown carown) {
        this.carown = carown;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCtype() {
        return ctype;
    }

    public void setCtype(String ctype) {
        this.ctype = ctype;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc;
    }

    public Integer getBoxNum() {
        return boxNum;
    }

    public void setBoxNum(Integer boxNum) {
        this.boxNum = boxNum;
    }

    public Integer getPeopleNum() {
        return peopleNum;
    }

    public void setPeopleNum(Integer peopleNum) {
        this.peopleNum = peopleNum;
    }

    public String getcDesc() {
        return cDesc;
    }

    public void setcDesc(String cDesc) {
        this.cDesc = cDesc;
    }

    public Integer getH_price() {
        return h_price;
    }

    public void setH_price(Integer h_price) {
        this.h_price = h_price;
    }

    public Integer getD_price() {
        return d_price;
    }

    public void setD_price(Integer d_price) {
        this.d_price = d_price;
    }

    public String getcNum() {
        return cNum;
    }

    public void setcNum(String cNum) {
        this.cNum = cNum;
    }

    public Integer getcStatus() {
        return cStatus;
    }

    public void setcStatus(Integer cStatus) {
        this.cStatus = cStatus;
    }



    @Override
    public String toString() {
        return "Car{" +
                "cid=" + cid +
                ", ctype='" + ctype + '\'' +
                ", cname='" + cname + '\'' +
                ", cc='" + cc + '\'' +
                ", boxNum=" + boxNum +
                ", peopleNum=" + peopleNum +
                ", cDesc='" + cDesc + '\'' +
                ", h_price=" + h_price +
                ", d_price=" + d_price +
                ", cNum='" + cNum + '\'' +
                ", cStatus=" + cStatus +
                '}';
    }
}
