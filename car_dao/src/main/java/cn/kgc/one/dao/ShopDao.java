package cn.kgc.one.dao;

import cn.kgc.one.Shop;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/28 19:53
 */

@Repository
public interface ShopDao {

    @Select("select * from shops")
    List<Shop> findAll();

    @Insert("insert into shops values(null,#{shop_num},#{shop_name},#{shop_address},#{shop_tel})")
    void save(Shop shop);

    @Delete("delete from shops where sid=#{sid}")
    void delOne(Integer sid);

    @Select("select * from shops where sid=#{sid}")
    Shop findById(Integer sid);
}
