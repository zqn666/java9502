package cn.kgc.one.dao;

import cn.kgc.one.UserAdmin;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleDao {
    //查询所有
    @Select("SELECT * FROM user_admin")
    List<UserAdmin> findAll();

    //修改
    @Update("update user_admin set roleName=#{roleName},roles=#{roles},username=#{username},email=#{email},password=#{password},phoneNum=#{phoneNum} where id=#{id}")
    void roleUpate(UserAdmin userAdmin);

    //删除
    @Select("delete from user_admin where id=#{id}")
    void roleDel(Integer id);

    //增加
    @Insert("insert into user_admin values(null,#{roleName},#{roles},#{username},#{email},#{password},#{phoneNum})")
    void roleInsert(UserAdmin userAdmin);

    //数据回显
    @Select("select * from user_admin where id=#{id}")
    List<UserAdmin>  findUI(Integer id);

    //修改
    @Update("update user_admin set roles=#{arg0} where id=#{arg1}")
    void updateOne(Integer roles, Integer id);

    //回显单个数据
    @Select("select * from user_admin where id=#{id}")
    UserAdmin findUIOne(Integer id);

}
