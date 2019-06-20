package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.itheima.ssm.dao.OrdersDao;
import com.itheima.ssm.domain.Orders;
import com.itheima.ssm.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    private OrdersDao ordersDao;
    @Override
    public PageInfo<Orders> findAll(int page, int pageSize) throws Exception {
        PageHelper.startPage(page, pageSize);
        List<Orders> ordersList = ordersDao.findAll();
        PageInfo pageInfo = new PageInfo<Orders>(ordersList);
        return pageInfo;
    }
}
