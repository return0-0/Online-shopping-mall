package com.example.mapper;

import com.example.entity.Business;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 操作business相关数据接口
*/
public interface BusinessMapper {

    /**
      * 新增
    */
    int insert(Business business);

    /**
      * 删除
    */
    int deleteById(Integer id);

    /**
      * 修改
    */
    int updateById(Business business);

    /**
      * 根据ID查询
    */
    Business selectById(Integer id);

    /**
      * 查询所有
    */
    List<Business> selectAll(Business business);

    @Select("select * from business where username = #{username}")
    Business selectByUsername(String username);
}