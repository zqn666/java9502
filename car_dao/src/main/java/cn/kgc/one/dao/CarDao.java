package cn.kgc.one.dao;

import cn.kgc.one.Car;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/26 19:34
 */

@Repository
public interface CarDao {
    // 查询所有车型信息 前后
    @Select("select * from cars")
    List<Car> findAll();

    // 根据品牌搜索   前后
    @Select("select * from cars where ctype like concat('%',#{ctype},'%')")
    List<Car> searchCtype(String ctype);

    // 车牌模糊  后
    @Select("select * from cars where cNum like concat('%',#{cNum},'%')")
    List<Car> searchCNum(String cNum);

    // 车牌查询车辆信息 后
    @Select("select * from cars where cNum = #{cNum}")
    Car findByCNum(String cNum);

    // 根据车型标签搜索 前后
    @Select("select * from cars where cDesc like concat('%',#{cDesc},'%')")
    List<Car> searchCDesc(String cDesc);

    // 时租价钱区间条件搜索  前
    @Select("select * from cars where h_price between #{min_price} and #{max_price} order by h_price ASC")
    List<Car> searchByH_price(@Param("min_price") Integer min_price,
                              @Param("max_price") Integer max_price);

    // 添加保存车辆信息  后
    @Insert("insert into cars values(null,#{ctype},#{cname},#{cc},#{boxNum},#{peopleNum},#{cDesc},#{h_price},#{d_price},#{cNum},#{cStatus},#{images},#{shopid},#{city},#{ownid})")
    void save(Car car);

    // 删除车辆信息
    @Delete("delete from cars where cid=#{cid}")
    void del(Integer cid);

    // id查询         后
    @Select("select * from cars where cid = #{cid}")
    Car findById(Integer cid);

    // 修改车辆信息   后
    @Update("update cars set ctype=#{ctype},cname=#{cname},cc=#{cc},boxNum=#{boxNum},peopleNum=#{peopleNum},cDesc=#{cDesc},h_price=#{h_price},d_price=#{d_price},cNum=#{cNum},cStatus=#{cStatus} where cid=#{cid}")
    void upd(Car car);

//    时租价升序
    @Select("select * from cars order by h_price ASC")
    List<Car> findByASC();

//    日组价降序
    @Select("select * from cars order by d_price DESC")
    List<Car> findByDESC();

//    城市，品牌，条件查询
    @Select("select * from cars where city like concat('%',#{city},'%') and ctype like concat('%',#{ctype},'%')")
    List<Car> findByCityCtype(@Param("city") String city, @Param("ctype") String ctype);

//    多条件查询
    @Select("select * from cars where " +
            "city like concat('%',#{city},'%') and " +
            "ctype like concat('%',#{ctype},'%') and " +
            "cDesc like concat('%',#{cDesc},'%') and " +
            "h_price between #{min_price} and #{max_price}")
    List<Car> getByFour(@Param("city") String city,@Param("ctype") String ctype,@Param("cDesc") String cDesc,@Param("min_price") Integer min_price, @Param("max_price")Integer max_price);


    // 城市查询
    @Select("select * from cars where city like concat('%',#{city},'%')")
    List<Car> findCity(String city);


    // 图片查询
    @Select("select * from cars where images=#{images}")
    Car findImg(String images);





}
