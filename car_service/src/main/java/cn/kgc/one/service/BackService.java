package cn.kgc.one.service;



import cn.kgc.one.Users;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface BackService {
    //查询所有
    List<Users> findAll();
    //数据回显
    Users login(Integer id);
    //增加数据
    void insert(Users users);
    //删除一个用户
    void del(Integer uid);
    //删除多个用户
    void dels(Integer[] ids);
    //修改
    void update(Users users);

    //分页功能
    PageInfo<Users> pagingHelper(Integer currPage, Integer pageSize);

    List<Users> LikeUser(String name);

}
