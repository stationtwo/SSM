package com.itheima.ssm.service;

import com.itheima.ssm.domain.Role;
import com.itheima.ssm.domain.UserInfo;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface UserService extends UserDetailsService {

    /**
     * 分页查询所有用户
     * @param page
     * @param pageSize
     * @return
     * @throws Exception
     */
    List<UserInfo> listUserInfoByPage(int page,int pageSize) throws Exception;


    /**
     * 查询用户详情
     * @param id
     * @return
     * @throws Exception
     */
    UserInfo getUserInfoById(String id) throws Exception;

    /**
     * 添加用户
     * @param userInfo
     */
    void save(UserInfo userInfo) throws Exception;

    UserInfo getUserByIdAndAllRole(String id) throws Exception;

    List<Role> listOtherRoleListByUserId(String id) throws Exception;

    void saveRole2User(String userId, String[] ids) throws Exception;
}
