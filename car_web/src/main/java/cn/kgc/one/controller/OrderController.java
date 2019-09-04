package cn.kgc.one.controller;

import cn.kgc.one.Orders;
import cn.kgc.one.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * @author :  Zhaoqn
 * @date :  2019/9/1 14:14
 */


@RestController
@CrossOrigin
@RequestMapping("/orders")
public class OrderController {
    @Autowired
    OrderService orderService;

     //查询所有订单
    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        List<Orders> all = orderService.findAll();
        ModelAndView mv = new ModelAndView();
        mv.addObject("all",all);
        mv.setViewName("order-list");
        return mv;
    }

    //生成订单
    @RequestMapping("/adds")
    public String adds(String b_time,String e_time,String uname,String images,Integer shiji_Money,Integer order_Status){
        System.out.println(b_time);
        System.out.println(e_time);
        System.out.println(uname);
        System.out.println(images);
        System.out.println(shiji_Money);
        System.out.println(order_Status);
        return orderService.adds(b_time,e_time,uname,images,shiji_Money,order_Status);
    }

    // 前取订单
    @RequestMapping("/gets")
    public List<Orders> gets(){
        return orderService.findAll();
    }

    @RequestMapping("/getUser")
    public List<Orders> getUser(String uname){
        return orderService.getUser(uname);
    }
//
//    // 后，订单详情
//    @RequestMapping("/xiangqing")
//    public ModelAndView findOne(Integer id ){
//        Map<String, Object> one = orderService.findOne(id);
//        ModelAndView mv = new ModelAndView();
//        mv.addObject("one",one);
//        mv.setViewName("order-show");
//        return mv;
//    }

}
