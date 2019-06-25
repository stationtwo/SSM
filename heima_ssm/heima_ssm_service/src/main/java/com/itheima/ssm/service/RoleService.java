package com.itheima.ssm.service;

import com.itheima.ssm.domain.Role;

import java.util.List;

public interface RoleService {


    List<Role> listRoleByPage(int page,int pageSize) throws Exception;

    void save(Role role) throws Exception;
}
