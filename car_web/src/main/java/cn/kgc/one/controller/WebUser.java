package cn.kgc.one.controller;


import cn.kgc.one.Over;
import cn.kgc.one.Users;
import cn.kgc.one.service.UserServicesWeb;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@Controller
@CrossOrigin
@RequestMapping("/users")
public class WebUser  extends HttpServlet {

    @Autowired
    UserServicesWeb userServices;

    //用户注册
    @RequestMapping("/insert")
    public @ResponseBody String insert(Users user) {
        String register=null;
        //判断用户是否已经被注册
        Users users = userServices.login(user.getUname());
        if (users==null){
            //增加
            int i = userServices.insert(user);
            System.out.println(i);
            if (i!=0){
                register="aaaaaa";
            }else{
                register="bbbbbb";
            }
        }else{
            register="bbbbbb";
        }
        return register;
    }

    //异步验证
    @RequestMapping("/ajax")
    public void ajaxs(@Param("uname") String uname, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println(uname);
        String byId = userServices.findById(uname);
        System.out.println("web" + byId);
        if (byId == null) {
            response.getWriter().write("true");
        } else {
            response.getWriter().write("false");
        }
    }

    //登录验证
    @RequestMapping("/logins")
        public @ResponseBody
    Object login(@Param("uname") String uname, @Param("pwd") String pwd) {
        Users users = userServices.login(uname);
        if (users==null){
            return "nothisuser";
        }else if (!pwd.equals(users.getPwd())) {
           return "errpassword";
        }else{
            return users;
        }
    }

    //查询所有用户
    @RequestMapping("/findAll")
    public @ResponseBody List<Users> findAll(){
        List<Users> list = userServices.findAll();
        return list;
    }

    //删除用户
    @RequestMapping("/del")
    public String delUser(Integer uid){
        userServices.del(uid);
        return "redirect:/users/findAll";
    }

    //回显数据
    @RequestMapping("/findUI")
    public @ResponseBody
    Users findUI(Integer uid){
        Users user = userServices.findUI(uid);
        return user;
    }

    //修改用户
    @RequestMapping("/update")
    public @ResponseBody
    Users update(Integer uid){
        Users update = userServices.update(uid);
        return update;
    }

    //模拟聊天功能
    @RequestMapping("/over")
    public @ResponseBody Object overs(){
        Over over = userServices.selectovers();
        System.out.println(over);
        return over;
    }

}


