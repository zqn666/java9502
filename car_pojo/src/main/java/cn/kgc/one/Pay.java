package cn.kgc.one;

import java.io.Serializable;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/30 21:11
 */

// 支付表
public class Pay implements Serializable{
    private Integer pid;
    private String pimg;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPimg() {
        return pimg;
    }

    public void setPimg(String pimg) {
        this.pimg = pimg;
    }
}
