package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Orders;
import com.itheima.ssm.domain.Product;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Service;

import java.util.List;

public interface OrdersDao {

    @Select("select * from orders")
    @Results({
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "ordernum",property = "orderNum"),
            @Result(column = "ordertime",property = "orderTime"),
            @Result(column = "peoplecount",property = "peopleCount"),
            @Result(column = "orderdesc",property = "orderDesc"),
            @Result(column = "paytype",property = "payType"),
            @Result(column = "orderstatus",property = "orderStatus"),
            @Result(column = "productid",property = "product",javaType = Product.class,one = @One(select = "com.itheima.ssm.dao.IProductDao.findById"))
    })
    List<Orders> findAll() throws Exception;

}
