package cn.kgc.one.service.impl;

import cn.kgc.one.Pay;
import cn.kgc.one.dao.PayDao;
import cn.kgc.one.dao.UserDao;
import cn.kgc.one.service.PayService;
import cn.kgc.one.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/30 21:11
 */

@Service
public class PayServiceImpl implements PayService {
    @Autowired
    PayDao payDao;
    @Autowired
    UserDao userDao;

    // 掉充值码
    @Override
    public Pay findCode(Integer pid) {
        return payDao.findCode(pid);
    }

    @Override
    public Integer getTime(String b_time, String e_time) {
        long b = DateUtils.strToDate(b_time).getTime();
        long e = DateUtils.strToDate(e_time).getTime();
        Integer hours = Math.toIntExact((e - b) / 1000 / 3600);
        return hours;
    }


    //充值
    @Override
    public String chongzhi(String uname, Integer czmoney) {
        Integer count = userDao.findUname(uname);
        czmoney=count+czmoney;
        Integer i = userDao.chongzhi(czmoney, uname);
        if (i==1){
            return "success";
        }else {
            return "false";
        }
    }

    @Override
    public Integer yue(String uname) {
        return userDao.findUname(uname);
    }
}
