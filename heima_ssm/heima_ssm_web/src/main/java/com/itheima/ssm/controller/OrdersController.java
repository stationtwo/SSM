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
    public ModelAndView findAll(@RequestParam(required = false,defaultValue = "1",name = "page")int page,@RequestParam(name = "pageSize",defaultValue = "5",required = false) int pageSize) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        PageInfo<Orders> pageInfo = ordersService.findAll(page,pageSize);
        modelAndView.addObject("pageInfo", pageInfo);

        modelAndView.setViewName("orders-list");
        return modelAndView;
    }
}
