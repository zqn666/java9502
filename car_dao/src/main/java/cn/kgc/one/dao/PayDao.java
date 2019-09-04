package cn.kgc.one.dao;

import cn.kgc.one.Pay;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/30 21:12
 */
@Repository
public interface PayDao {

    @Select("select * from pay where pid=#{pid}")
    Pay findCode(Integer pid);


}
