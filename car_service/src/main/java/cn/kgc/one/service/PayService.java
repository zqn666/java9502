package cn.kgc.one.service;

import cn.kgc.one.Pay;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/30 21:11
 */
public interface PayService {
    Pay findCode(Integer pid);

    Integer getTime(String b_time, String e_time);

    String chongzhi(String uname, Integer czmoney);

    Integer yue(String uname);
}
