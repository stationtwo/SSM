package com.itheima.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Orders;
import com.itheima.ssm.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrdersController {
    @Autowired
    private OrdersService ordersService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(required = false,defaultValue = "1",name = "page")Integer page,@RequestParam(name = "pageSize",defaultValue = "3",required = false) Integer pageSize) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        PageInfo<Orders> pageInfo = ordersService.listOrdersByPage(page,pageSize);
        modelAndView.addObject("pageInfo", pageInfo);

        modelAndView.setViewName("orders-list");
        return modelAndView;
    }

    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(required = true,name = "id") String id) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        Orders orders = ordersService.getOrdersById(id);
        modelAndView.addObject("orders", orders);
        modelAndView.setViewName("orders-show");
        return modelAndView;
    }
}
