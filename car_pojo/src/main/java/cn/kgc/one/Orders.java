package cn.kgc.one;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/30 16:17
 */

//订单表
public class Orders {
    private Integer id;     //id
    private String b_time;      //下单时间
    private String e_time;      //结算时间
    private Integer cid;   //车辆id
    private Car car;
    private Integer uid;   //用户id;
    private Users user;
    private Integer shiji_Money;   //实际费用
    private Integer order_Status;   //账单状态

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getB_time() {
        return b_time;
    }

    public void setB_time(String b_time) {
        this.b_time = b_time;
    }

    public String getE_time() {
        return e_time;
    }

    public void setE_time(String e_time) {
        this.e_time = e_time;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public Integer getShiji_Money() {
        return shiji_Money;
    }

    public void setShiji_Money(Integer shiji_Money) {
        this.shiji_Money = shiji_Money;
    }

    public Integer getOrder_Status() {
        return order_Status;
    }

    public void setOrder_Status(Integer order_Status) {
        this.order_Status = order_Status;
    }
}
