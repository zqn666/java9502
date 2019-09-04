package cn.kgc.one.service;

import cn.kgc.one.Orders;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author :  Zhaoqn
 * @date :  2019/9/2 10:05
 */


public interface OrderService {

    List<Orders> findAll();

    String adds(String b_time, String e_time, String uname, String images,Integer shiji_Money,Integer order_Status );


    List<Orders> getUser(String uname);

    Map<String, Object> findOne(Integer id);
}
