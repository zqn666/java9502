package cn.kgc.one.service;

import cn.kgc.one.UserAdmin;
import org.springframework.security.core.userdetails.User;


import java.util.List;


public interface RoleService {

    //查询所有
     List<UserAdmin> findAll();

     //修改
    void roleUpdate(UserAdmin userAdmin);
    //删除单个
    void del(Integer id);
    //删除多个
    void delMore(int[] id);
    //增加
    void roleInsert(UserAdmin userAdmin);
    //数据回显
    List<UserAdmin>  findUI(Integer id);
    //修改单个
    void updateOne(Integer ids, Integer id);
    //回显单个数据
    UserAdmin findUIOne(Integer id);
    //修改角色信息
    void updateUser(UserAdmin userAdmin);
}
