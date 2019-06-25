package com.itheima.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Syslog;
import com.itheima.ssm.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/sysLog")
public class SysLogController {

    @Autowired
    private SysLogService sysLogService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",required = false) Integer page, @RequestParam(defaultValue = "5",required = false) Integer pageSize) throws Exception{
        ModelAndView mv = new ModelAndView();
        List<Syslog> syslogList = sysLogService.listSysLogByPage(page, pageSize);
        PageInfo<Syslog> pageInfo = new PageInfo<Syslog>(syslogList, 5);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("syslog-list");
        return mv;
    }
}
