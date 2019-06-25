package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.itheima.ssm.domain.Role;
import com.itheima.ssm.dao.RoleDao;
import com.itheima.ssm.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleDao roleDao;

    @Override
    @Transactional(readOnly = true)
    public List<Role> listRoleByPage(int page, int pageSize) throws Exception{
        PageHelper.startPage(page, pageSize);
        List<Role> roleList = roleDao.listRoleByPage();

        return roleList;
    }

    @Override
    public void save(Role role) throws Exception {
        roleDao.save(role);
    }
}
