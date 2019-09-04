package cn.kgc.one.service.impl;

import cn.kgc.one.UserAdmin;
import cn.kgc.one.dao.RoleDao;
import cn.kgc.one.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    RoleDao roleDao;
    //查询所有
    @Override
    public List<UserAdmin> findAll() {
        return roleDao.findAll();
    }
    //修改
    @Override
    public void roleUpdate(UserAdmin userAdmin) {
        roleDao.roleUpate(userAdmin);
    }
    //删除单个
    @Override
    public void del(Integer id) {
        roleDao.roleDel(id);
    }
    //删除多个
    @Override
    public void delMore(int[] ids) {
        if (ids!=null){
            for (int id:ids){
                System.out.println(id+"===================================");
                roleDao.roleDel(id);
            }
        }

    }

    //增加
    @Override
    public void roleInsert(UserAdmin userAdmin) {
        roleDao.roleInsert(userAdmin);
    }

    //数据回显
    @Override
    public List<UserAdmin> findUI(Integer id) {
        return roleDao.findUI(id);
    }
    //修改单个
    @Override
    public void updateOne(Integer roles, Integer id) {
        roleDao.updateOne(roles,id);
    }
    //回显数据
    @Override
    public UserAdmin findUIOne(Integer id) {
        return roleDao.findUIOne(id);
    }
    //修改用户信息
    @Override
    public void updateUser(UserAdmin userAdmin) {
        roleDao.roleUpate(userAdmin);
    }
}
