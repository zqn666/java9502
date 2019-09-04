package cn.kgc.one.service.impl;

import cn.kgc.one.Carown;
import cn.kgc.one.dao.CarOwnDao;
import cn.kgc.one.service.CarOwnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/29 23:22
 */
@Service
public class CarOwnServiceImpl implements CarOwnService {
    @Autowired
    CarOwnDao carOwnDao;

    @Override
    public List<Carown> findAll() {
        return carOwnDao.findAll();
    }
}
