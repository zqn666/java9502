package cn.kgc.one.dao;


import cn.kgc.one.Users;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface BackDao {

    //查询所有
    @Select("select * from users")
    List<Users> findAll();

  //数据回显
    @Select("select * from users where uid=#{uid}")
    Users findUI(Integer uid);

    //增加用户
    @Insert("insert into users values(null,#{uname},#{pwd},#{tel},#{name},#{paperType},#{paperNum},#{email},0)")
    void insert(Users users);

    //删除一个
    @Delete("delete from users where uid=#{id}")
    void del(Integer uid);
    //修改
    @Update("update users set uname=#{uname},pwd=#{pwd},tel=#{tel},name=#{name},paperType=#{paperType},paperNum=#{paperNum},email=#{email},counts=#{counts} where uid=#{uid}")
    void update(Users users);

    //模糊查询
    @Select("select * from users where name like concat('%',#{name},'%')")
    List<Users> LikeUser(String name);
}
