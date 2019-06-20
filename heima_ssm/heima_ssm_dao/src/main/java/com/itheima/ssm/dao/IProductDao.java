package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Product;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface IProductDao {

    @Select("select * from product where id = #{id}")
    List<Product> findById() throws Exception;

    @Select(value = "select * from product")
    public List<Product> findAll() throws Exception;

    @Insert("insert into product (productnum,productname,cityname,departuretime,productprice,productdesc,productstatus) values (#{productNum},#{productName},#{cityName},#{departureTime},#{productPrice},#{productDesc},#{productStatus})")
    void save(Product product) throws Exception;
}
