package cn.kgc.one.controller;

import cn.kgc.one.UserAdmin;
import cn.kgc.one.service.RoleService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@CrossOrigin
@Controller
@RequestMapping("role")
public class Role {
    @Autowired
    RoleService roleService;

    //查询所有
    @RequestMapping("roleFindAll")
    public ModelAndView findAll(){
        List<UserAdmin> list = roleService.findAll();
        System.out.println(list+"=========================");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("RoleList",list);
        modelAndView.setViewName("role-list");
        return modelAndView;
    }
    //修改
    @RequestMapping("roleUpdate")
    public String roleUpdate(UserAdmin userAdmin){
        roleService.roleUpdate(userAdmin);
        return "redirect:/role/roleFindAll";
    }

    //删除
    @RequestMapping("delOne")
    public String roleDel(Integer id){
        roleService.del(id);
        return "redirect:/role/roleFindAll";
    }

    //删除多个
    @RequestMapping("delMany")
    public String roleMore(int[] ids){
        roleService.delMore(ids);
        return "redirect:/role/roleFindAll";
    }

    //增加
    @RequestMapping("save")
    public String  roleInsert(UserAdmin userAdmin){
        roleService.roleInsert(userAdmin);
        return "redirect:/role/roleFindAll";
    }

//    数据回显
    @RequestMapping("roleFindUI")
    public ModelAndView findUI(Integer id){
        List<UserAdmin>  userAdmin = roleService.findUI(id);
        System.out.println(userAdmin+"userAdmin");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("RoleList",userAdmin);
        modelAndView.setViewName("role-permission-add");
        return modelAndView;

    }

    //    数据回显单个
    @RequestMapping("roleFindOne")
    public ModelAndView findUIOne(@Param("id") int id){
        System.out.println(id+"==========================");
        UserAdmin  userAdmin = roleService.findUIOne(id);
        System.out.println(userAdmin+"userAdmin");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("UserAdmin",userAdmin);
        modelAndView.setViewName("role-permission-update");
        return modelAndView;

    }

    //修改单个
    @RequestMapping("updateOne")
    public String updateOne(@Param("Status") Integer status,@Param("id") Integer id){
        roleService.updateOne(status,id);
        return "redirect:/role/roleFindAll";
    }
    //修改个人全部信息
    @RequestMapping("/updateAdmin")
    public String updateAdmin(@Param("userAdmin") UserAdmin userAdmin){
        roleService.updateUser(userAdmin);
        return "redirect:/role/roleFindAll";
    }
}
