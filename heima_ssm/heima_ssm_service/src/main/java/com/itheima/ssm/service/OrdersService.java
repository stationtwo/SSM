package com.itheima.ssm.service;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Orders;

public interface OrdersService {
    PageInfo<Orders> findAll(int page, int pageSize) throws Exception;
}
