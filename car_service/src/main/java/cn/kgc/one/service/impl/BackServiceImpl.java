package cn.kgc.one.service.impl;


import cn.kgc.one.Users;
import cn.kgc.one.dao.BackDao;
import cn.kgc.one.service.BackService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class BackServiceImpl implements BackService {

    @Autowired
    BackDao backDao;

    //查询所有
    @Override
    public List<Users> findAll() {
        return backDao.findAll();
    }
    //数据回显
    @Override
    public Users login(Integer id) {
        return backDao.findUI(id);
    }
    //增加数据
    @Override
    public void insert(Users users) {
        backDao.insert(users);
    }
    //删除一个
    @Override
    public void del(Integer id) {
        backDao.del(id);
    }
    //删除多个用户
    @Override
    public void dels(Integer[] ids) {
        if (ids!=null){
            for (Integer i:ids){
                backDao.del(i);
            }
        }
    }
    //修改
    @Override
    public void update(Users users) {
        backDao.update(users);
    }
    //分页功能
    @Override
    public  PageInfo<Users> pagingHelper(Integer currPage, Integer pageSize) {
        //指定分页参数
        PageHelper.startPage(currPage, pageSize);
        //查询全部
        List<Users> usersList = backDao.findAll();

        //创建pageInfo对象
        PageInfo<Users> pageInfo = new PageInfo<>(usersList,5);
        return pageInfo;
    }

    @Override
    public List<Users> LikeUser(String name) {
        return backDao.LikeUser(name);
    }


}
