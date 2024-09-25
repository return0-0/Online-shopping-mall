package com.example.mapper;

import com.example.entity.Address;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 操作address相关数据接口
*/
public interface AddressMapper {

    /**
      * 新增
    */
    int insert(Address address);

    /**
      * 删除
    */
    int deleteById(Integer id);

    /**
      * 修改
    */
    int updateById(Address address);

    /**
      * 根据ID查询
    */
    Address selectById(Integer id);

    /**
      * 查询所有
    */
    List<Address> selectAll(Address address);

  @Select("select * from address where user_id = #{userId} and goods_id = #{goodsId}")
Address selectByUserIdAndGoodsId(@Param("userId") Integer userId, @Param("goodsId") Integer goodsId);


}