package cn.kgc.one.controller;


import cn.kgc.one.Users;
import cn.kgc.one.service.BackService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@CrossOrigin
@RequestMapping("/user")
public class BackUser{

    @Autowired
    BackService backService;

    //数据回显
    @RequestMapping("/findUI")
    public ModelAndView login(Integer uid) {
        Users users = backService.login(uid);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("BackUser",users);
        modelAndView.setViewName("user-user-add");
        return modelAndView;
    }
    //数据回显
    @RequestMapping("/findUpdate")
    public ModelAndView logins(Integer uid) {
        Users users = backService.login(uid);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("BackUpdate",users);
        modelAndView.setViewName("user-update-update");
        return modelAndView;
    }

    //查询所有用户
    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        List<Users> list = backService.findAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("UserList",list);
        modelAndView.setViewName("user-list");
        return modelAndView;
    }

    //增加用户
    @RequestMapping("/save")
    public String insert(Users users){
        backService.insert(users);
        return "redirect:/user/paging";
    }

    //删除用户
    @RequestMapping("del")
    public String del(Integer uid){
        backService.del(uid);
        return "redirect:/user/paging";
    }

    //删除多个
    @RequestMapping("delMony")
    public String dels(Integer[] ids){
        backService.dels(ids);
        return "redirect:/user/paging";
    }

    //修改
    @RequestMapping("update")
    public String update(Users users){

        backService.update(users);
        return "redirect:/user/paging";
    }

    //分页功能
    @RequestMapping("paging")
    public ModelAndView paging(
                             @RequestParam(value = "currPage",required = false,defaultValue = "1") Integer currPage,
                             @RequestParam(value = "pageSize",required = false,defaultValue = "2") Integer pageSize){
       //准备分页数据
        PageInfo<Users> pageInfo = backService.pagingHelper(currPage, pageSize);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("user-list");
        return modelAndView;
    }

    //查询功能
    @RequestMapping("/LikeUser")
    public ModelAndView LikeUser(String name){
        List<Users> likeUser = backService.LikeUser(name);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo",likeUser);
        modelAndView.setViewName("user-list");
        return modelAndView;
    }

}


