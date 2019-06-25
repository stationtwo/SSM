package com.itheima.ssm.dao;
import com.itheima.ssm.domain.Member;
import com.itheima.ssm.domain.Orders;
import com.itheima.ssm.domain.Product;
import org.apache.ibatis.annotations.*;
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
            @Result(column = "productid",property = "product",javaType = Product.class,one = @One(select = "com.itheima.ssm.dao.ProductDao.getProductById"))
//            @Result(column = "memberid", property = "member",javaType = Member.class,one = @One(select = "com.itheima.ssm.dao.MemberDao.getMemberById")),
//            @Result(column = "id",property = "travellerList",javaType = List.class,many = @Many(select = "com.itheima.ssm.dao.TravellerDao.listTravellerByOrdersId"))

    })
    List<Orders> listOrdersByPage() throws Exception;




    @Select("select * from orders where id = #{id}")
    @Results({
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "ordernum",property = "orderNum"),
            @Result(column = "ordertime",property = "orderTime"),
            @Result(column = "peoplecount",property = "peopleCount"),
            @Result(column = "orderdesc",property = "orderDesc"),
            @Result(column = "paytype",property = "payType"),
            @Result(column = "orderstatus",property = "orderStatus"),
            @Result(column = "productid",property = "product",javaType = Product.class,one = @One(select = "com.itheima.ssm.dao.ProductDao.getProductById")),
            @Result(column = "memberid", property = "member",javaType = Member.class,one = @One(select = "com.itheima.ssm.dao.MemberDao.getMemberById")),
            @Result(column = "id",property = "travellerList",javaType = List.class,many = @Many(select = "com.itheima.ssm.dao.TravellerDao.listTravellerByOrdersId"))

    })
    Orders getOrdersById(String id) throws Exception;

}
