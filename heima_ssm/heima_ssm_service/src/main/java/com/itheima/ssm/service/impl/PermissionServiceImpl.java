package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.itheima.ssm.dao.PermissionDao;
import com.itheima.ssm.domain.Permission;
import com.itheima.ssm.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PermissionServiceImpl implements PermissionService {
    @Autowired
    private PermissionDao permissionDao;

    @Override
    @Transactional(readOnly = true)
    public List<Permission> listPermissionByPage(int page, int pageSize) throws Exception {
        PageHelper.startPage(page, pageSize);

        return permissionDao.listPermission();
    }

    @Override
    @Transactional(readOnly = true)
    public Permission getPermissionById(String id) throws Exception {
        return permissionDao.getPermissionById(id);
    }

    @Override
    public void save(Permission permission) throws Exception{
        permissionDao.save(permission);
    }
}
