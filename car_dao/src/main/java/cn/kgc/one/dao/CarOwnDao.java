package cn.kgc.one.dao;

import cn.kgc.one.Carown;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/29 22:28
 */
@Repository
public interface CarOwnDao {

    @Select("select * from carown where coid=#{coid}")
    Carown findById(Integer coid);

    @Select("select * from carown where otel=#{otel}")
    Carown findByOtel(String otel);

    @Insert("insert into carown values(null,#{oname},#{otel},#{otypeNum})")
    void save(Carown carown);

    @Select("select max(coid) from carown")
    Integer findMax();

    @Select("select * from carown")
    List<Carown> findAll();
}
