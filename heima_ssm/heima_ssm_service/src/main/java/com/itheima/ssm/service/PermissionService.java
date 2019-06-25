package com.itheima.ssm.service;

import com.itheima.ssm.domain.Permission;

import java.util.List;

public interface PermissionService {

    List<Permission> listPermissionByPage(int page,int pageSize) throws Exception;

    Permission getPermissionById(String id) throws Exception;

    void save(Permission permission) throws Exception;
}
