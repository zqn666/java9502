package cn.kgc.one.dao;



import cn.kgc.one.Over;
import cn.kgc.one.UserAdmin;
import cn.kgc.one.Users;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserDao {
    //注册
    @Insert("insert into users values(null,#{uname},#{pwd},0,0,0,0,0,0)")
    int insert(Users user);
   //异步验证
    @Select("select * from users where uname=#{uname}")
    String findById(String uname);


    // 根据用户名查余额，充值用
    @Select("select counts from users where uname=#{uname}")
    Integer findUname(String uname);


    //登陆
    @Select("select * from users where uname=#{arg0}")
    Users login(String uname);

    //查询所有
    @Select("select * from users")
    List<Users> findAll();
    //跟据id删除
    @Delete("delete from users where uid=#{id}")
    void del(Integer id);
    //修改
    @Update("update users set uname=#{uname},pwd=#{pwd},tel=#{tel},#{name},paperType=#{paperType},paperNum=#{paperNum},email=#{email},counts=#{counts} where uid=#{uid}")
    Users update(Integer uid);
    //回显数据
    @Select("select * from users where uid=#{uid} ")
    Users findUI(Integer uid);


    //充值
    @Update("update users set counts=#{count} where uname=#{uname}")
    Integer chongzhi(@Param("count") Integer count,@Param("uname") String uname);

    @Select("select * from users where uname=#{uname}")
    Users getUname(String uname);

    //模拟聊天查询功能
    @Select("select * from overs")
    Over selectOver();

   @Select("select * from user_admin where username=#{username}")
   UserAdmin findByUsername(String username);


}
