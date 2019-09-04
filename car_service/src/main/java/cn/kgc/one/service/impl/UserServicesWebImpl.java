package cn.kgc.one.service.impl;

import cn.kgc.one.Over;
import cn.kgc.one.Users;
import cn.kgc.one.dao.UserDao;
import cn.kgc.one.service.UserServicesWeb;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServicesWebImpl implements UserServicesWeb {
    @Autowired
    UserDao userDao;

    @Override
    public Users login(String uname) {
        return userDao.login(uname);
    }

    @Override
    public int insert(Users user) {
        return userDao.insert(user);
    }

    @Override
    public String findById(String uname) {
        return userDao.findById(uname);
    }

    @Override
    public List<Users> findAll() {
        return userDao.findAll();
    }

    @Override
    public void del(Integer uid) {
        userDao.del(uid);
    }

    @Override
    public Users findUI(Integer uid) {
        return userDao.findUI(uid);
    }

    @Override
    public Users update(Integer uid) {
        return userDao.update(uid);
    }

    @Override
    public Over selectovers() {
        return userDao.selectOver();
    }
}
