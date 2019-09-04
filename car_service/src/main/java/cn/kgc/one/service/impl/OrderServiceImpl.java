package cn.kgc.one.service.impl;

import cn.kgc.one.Car;
import cn.kgc.one.Orders;
import cn.kgc.one.Users;
import cn.kgc.one.dao.CarDao;
import cn.kgc.one.dao.OrderDao;
import cn.kgc.one.dao.UserDao;
import cn.kgc.one.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author :  Zhaoqn
 * @date :  2019/9/2 10:07
 */

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderDao orderDao;
    @Autowired
    CarDao carDao;
    @Autowired
    UserDao userDao;


    @Override
    public List<Orders> findAll() {
        List<Orders> all = orderDao.findAll();
        for (Orders order : all) {
            order.setCar(carDao.findById( order.getCid()));
            order.setUser(userDao.findUI(order.getUid()));
        }
        return all;
    }

    @Override
    public String adds(String b_time, String e_time, String uname, String images,Integer shiji_Money,Integer order_Status ) {

        int uid = userDao.getUname(uname).getUid();
        System.out.println(uid);
        Integer cid = carDao.findImg(images).getCid();
        System.out.println(cid);
        System.out.println(order_Status);
        Integer adds = orderDao.adds(b_time, e_time, uid, cid, shiji_Money, order_Status);
        if (adds==1){
            return "success";
        }else {
            return "false";
        }
    }

    @Override
    public List<Orders> getUser(String uname) {
        Integer uid = userDao.getUname(uname).getUid();
        System.out.println(uid);
        List<Orders> user = orderDao.getUser(uid);
        System.out.println(user);
        return user;
    }

    @Override
    public Map<String, Object> findOne(Integer id) {
        Orders order = orderDao.findId(id);
        Car car = carDao.findById(order.getCid());
        Users user = userDao.findUI(order.getUid());
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("order",order);
        map.put("car",car);
        map.put("user",user);
        return map;
    }
}
