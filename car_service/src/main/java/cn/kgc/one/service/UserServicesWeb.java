package cn.kgc.one.service;

import cn.kgc.one.Over;
import cn.kgc.one.Users;

import java.util.List;

public interface UserServicesWeb {
    //登录
    Users login(String uname);
    //注册
    int insert(Users user);
    //异步验证
    String findById(String uname);
    //查询所有
    List<Users> findAll();
    //删除单个用户
    void del(Integer uid);
    //回显数据
    Users findUI(Integer uid);
    //修改
    Users update(Integer uid);
    //模拟聊天功能
    Over selectovers();
}
