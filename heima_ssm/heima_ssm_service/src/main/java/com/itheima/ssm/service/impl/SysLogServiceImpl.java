package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.itheima.ssm.dao.SysLogDao;
import com.itheima.ssm.domain.Syslog;
import com.itheima.ssm.service.SysLogService;
import com.itheima.ssm.util.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service
public class SysLogServiceImpl implements SysLogService {
    @Autowired
    private SysLogDao sysLogDao;


    @Transactional(readOnly = true)
    @Override
    public List<Syslog> listSysLogByPage(Integer page, Integer pageSize) throws Exception {
        PageHelper.startPage(page, pageSize);
        List<Syslog> syslogList = sysLogDao.listSyslog();
        for (Syslog syslog : syslogList) {
            if (syslog.getVisitTime() != null) {
                syslog.setVisitTimeStr(DateUtils.date2Str(syslog.getVisitTime()));
            }
        }
        return syslogList;
    }

    @Override
    public void save(Syslog syslog) throws Exception {
        sysLogDao.save(syslog);
    }
}
