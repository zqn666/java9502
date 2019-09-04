package cn.kgc.one.controller;

import cn.kgc.one.Pay;
import cn.kgc.one.dao.UserDao;
import cn.kgc.one.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/30 21:06
 */

//支付接口

@RestController
@CrossOrigin
@RequestMapping("/counts")
public class PayController {
    @Autowired
    PayService payService;
    @Autowired
    UserDao userDao;

    // 调支付码
    @RequestMapping("/findCode")
    public ModelAndView findCode(Integer pid,Integer uid){
        Pay pay = payService.findCode(pid);
        ModelAndView mv = new ModelAndView();
        mv.addObject("pay",pay);
        mv.addObject("uid",uid);
        mv.setViewName("pay-list");
        return mv;
    }

    @RequestMapping("/findCode2")
    public ModelAndView findCode2(Integer pid , Integer uid, Integer xu_money){
        Pay pay = payService.findCode(pid);
        ModelAndView mv = new ModelAndView();
        mv.addObject("pay",pay);
        mv.addObject("uid",uid);
        mv.addObject("xu_money",xu_money);
        mv.setViewName("pay-list2");
        return mv;
    }

    // 计算时间
    @RequestMapping("/getTime")
    public Integer getTime(String b_time,String e_time){
        Integer time = payService.getTime(b_time, e_time);
        return time;
    }

    // 充值
    @RequestMapping("/chongzhi")
    public String chongzhi(String  uname,Integer czmoney){
        return payService.chongzhi(uname, czmoney);
    }

    //余额
    @RequestMapping("/yue")
    public Integer yue(String uname){
        return payService.yue(uname);
    }
}
