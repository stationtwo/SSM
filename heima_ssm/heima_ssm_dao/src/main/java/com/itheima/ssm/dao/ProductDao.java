package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Product;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface ProductDao {

    @Select("select * from product where id = #{id}")
    List<Product> getProductById(String id) throws Exception;

    @Select(value = "select * from product")
    public List<Product> listProductByPage() throws Exception;

    @Insert("insert into product (productnum,productname,cityname,departuretime,productprice,productdesc,productstatus) values (#{productNum},#{productName},#{cityName},#{departureTime},#{productPrice},#{productDesc},#{productStatus})")
    void save(Product product) throws Exception;
}
