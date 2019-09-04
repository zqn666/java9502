package cn.kgc.one.service.impl;

import cn.kgc.one.Shop;
import cn.kgc.one.dao.ShopDao;
import cn.kgc.one.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/28 19:52
 */

@Service
public class ShopServiceImpl implements ShopService {
    @Autowired
    ShopDao shopDao;


    @Override
    public List<Shop> findAll() {
        return shopDao.findAll();
    }

    @Override
    public void save(Shop shop) {
        shopDao.save(shop);
    }

    @Override
    public void delOne(Integer sid) {
        shopDao.delOne(sid);
    }

    @Override
    public Shop findById(Integer sid) {
        return shopDao.findById(sid);
    }
}
