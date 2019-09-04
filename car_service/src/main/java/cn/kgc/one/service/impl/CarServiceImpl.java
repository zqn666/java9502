package cn.kgc.one.service.impl;

import cn.kgc.one.Car;
import cn.kgc.one.Carown;
import cn.kgc.one.Shop;
import cn.kgc.one.dao.CarDao;
import cn.kgc.one.dao.CarOwnDao;
import cn.kgc.one.dao.ShopDao;
import cn.kgc.one.service.CarService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/26 19:38
 */

@Service
public class CarServiceImpl implements CarService {

    @Autowired
    CarDao carDao;
    @Autowired
    ShopDao shopDao;
    @Autowired
    CarOwnDao carOwnDao;

    @Override
    public List<Car> findAll() {
        return carDao.findAll();
    }

    @Override
    public List<Car> searchCtype(String ctype) {
        return carDao.searchCtype(ctype);
    }

    @Override
    public Car findByCNum(String cNum) {
        Car byCNum = carDao.findByCNum(cNum);
        Carown byId1 = carOwnDao.findById(byCNum.getOwnid());
        Shop byId = shopDao.findById(byCNum.getShopid());
        byCNum.setCarown(byId1);
        byCNum.setShop(byId);
        return byCNum;
    }

    @Override
    public List<Car> searchCDesc(String cDesc) {
        return carDao.searchCDesc(cDesc);
    }

    @Override
    public List<Car> searchByH_price(Integer min_price, Integer max_price) {
        if (min_price==null){
            min_price=0;
        }
        if (max_price==null){
            max_price=9999999;
        }
        return carDao.searchByH_price(min_price,max_price);
    }

    @Override
    public void save(Car car,Carown carown) {
        String substring = shopDao.findById(car.getShopid()).getShop_name().substring(0, 2);
        System.out.println(substring);
        car.setCity(substring);
//        聚合
        Integer max = carOwnDao.findMax();
        car.setOwnid(max+1);
        carOwnDao.save(carown);
        carDao.save(car);
    }

    @Override
    public void delOne(Integer cid) {
        carDao.del(cid);
    }

    @Override
    public Car findById(Integer cid) {
        Car byId = carDao.findById(cid);
        Carown co = carOwnDao.findById(byId.getOwnid());
        byId.setCarown(co);
        Shop shop = shopDao.findById(byId.getShopid());
        byId.setShop(shop);
        return byId;
    }

    @Override
    public void upd(Car car) {
        carDao.upd(car);
    }

    @Override
    public void delMany(Integer[] ids) {
        if (ids!=null){
            for (Integer id : ids) {
                carDao.del(id);
            }
        }
    }

    @Override
    public List<Car> searchCNum(String cNum) {
        return carDao.searchCNum(cNum);
    }

    @Override
    public PageInfo<Car> findByPage(Integer currentPage, Integer pageSize) {
//        开启分页助手
        PageHelper.startPage(currentPage,pageSize);
        List<Car> all = carDao.findAll();
        return  new PageInfo<>(all, pageSize);

    }

    @Override
    public List<Car> findByASC() {
        return carDao.findByASC();
    }

    @Override
    public List<Car> findByDESC() {
        return carDao.findByDESC();
    }

    @Override
    public List<Car> findByCityCtype(String city, String ctype) {
        return carDao.findByCityCtype(city,ctype);
    }

    @Override
    public List<Car> getByFour(String city, String ctype, String cDesc, Integer min_price, Integer max_price) {
        if (min_price==null){
            min_price=0;
        }
        if (max_price==null){
            max_price=9999999;
        }
        return carDao.getByFour(city,ctype,cDesc,min_price,max_price);
    }

    @Override
    public List<Car> findCity(String city) {
        return carDao.findCity(city);
    }


}
