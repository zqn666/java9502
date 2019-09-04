package cn.kgc.one.dao;

import cn.kgc.one.Orders;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author :  Zhaoqn
 * @date :  2019/9/2 10:08
 */

@Repository
public interface OrderDao {

    @Select("select * from orders")
    List<Orders> findAll();

   @Insert("insert into orders values(null,#{b_time},#{e_time},#{uid},#{cid},#{shiji_Money},#{order_Status})")
    Integer adds(@Param("b_time") String b_time,@Param("e_time") String e_time, @Param("uid")Integer uid,@Param("cid") Integer cid,
              @Param("shiji_Money") Integer shiji_Money,@Param("order_Status") Integer order_Status);


    @Select("select * from orders where uid=#{uid}")
    List<Orders> getUser(Integer uid);

    @Select("select * from orders where id=#{id}")
    Orders findId(Integer id);
}
