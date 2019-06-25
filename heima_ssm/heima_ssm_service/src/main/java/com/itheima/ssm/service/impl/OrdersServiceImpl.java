package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.itheima.ssm.dao.OrdersDao;
import com.itheima.ssm.domain.Orders;
import com.itheima.ssm.service.OrdersService;
import com.itheima.ssm.util.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    private OrdersDao ordersDao;

    @Override
    @Transactional(readOnly = true)
    public PageInfo<Orders> listOrdersByPage(int page, int pageSize) throws Exception {
        PageHelper.startPage(page, pageSize);
        List<Orders> ordersList = ordersDao.listOrdersByPage();
        for (Orders orders : ordersList) {
            if (orders.getOrderTime() != null) {
                orders.setOrderTimeStr(DateUtils.date2Str(orders.getOrderTime(), "yyyy-MM-dd HH:mm:ss"));
            }
        }

        return new PageInfo<Orders>(ordersList,5);
    }

    @Override
    @Transactional(readOnly = true)
    public Orders getOrdersById(String id) throws Exception {
        Orders orders = ordersDao.getOrdersById(id);
        if (orders.getOrderTime() != null) {
            orders.setOrderTimeStr(DateUtils.date2Str(orders.getOrderTime(), "yyyy-MM-dd HH:mm:ss"));
        }
        return orders;
    }
}
