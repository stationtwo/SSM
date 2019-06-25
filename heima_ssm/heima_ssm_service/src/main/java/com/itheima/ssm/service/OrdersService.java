package com.itheima.ssm.service;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Orders;

public interface OrdersService {
    PageInfo<Orders> listOrdersByPage(int page, int pageSize) throws Exception;

    Orders getOrdersById(String id) throws Exception;
}
