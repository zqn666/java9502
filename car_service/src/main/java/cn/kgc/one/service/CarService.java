package cn.kgc.one.service;

import cn.kgc.one.Car;
import cn.kgc.one.Carown;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/26 19:37
 */


public interface CarService {

    List<Car> findAll();

    List<Car> searchCtype(String ctype);

    Car findByCNum(String cNum);

    List<Car> searchCDesc(String cDesc);

    List<Car> searchByH_price(Integer min_price, Integer max_price);

    void save(Car car, Carown carown);

    void delOne(Integer cid);

    Car findById(Integer cid);

    void upd(Car car);

    void delMany(Integer[] ids);

    List<Car> searchCNum(String cNum);

    PageInfo<Car> findByPage(Integer currentPage, Integer pageSize);

    List<Car> findByASC();

    List<Car> findByDESC();

    List<Car> findByCityCtype(String city, String ctype);


    List<Car> getByFour(String city, String ctype, String cDesc, Integer min_price, Integer max_price);

    List<Car> findCity(String city);
}
