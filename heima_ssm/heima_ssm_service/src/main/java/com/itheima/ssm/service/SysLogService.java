package com.itheima.ssm.service;

import com.itheima.ssm.domain.Syslog;

import java.util.List;

public interface SysLogService {

    List<Syslog> listSysLogByPage(Integer page,Integer pageSize)throws Exception;

    void save(Syslog syslog) throws Exception;
}
