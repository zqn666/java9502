package cn.kgc.one.service;

import cn.kgc.one.Shop;

import java.util.List;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/28 19:51
 */
public interface ShopService {

    List<Shop> findAll();

    void save(Shop shop);

    void delOne(Integer sid);

    Shop findById(Integer sid);
}
