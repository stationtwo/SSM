package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.itheima.ssm.dao.UserDao;
import com.itheima.ssm.domain.Role;
import com.itheima.ssm.domain.UserInfo;
import com.itheima.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Autowired
    @Qualifier("passwordEncoder")
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserInfo userInfoByUsername = null;
        try {
            userInfoByUsername = userDao.getUserInfoByUsername(username);
        } catch (Exception e) {
            e.printStackTrace();
        }
        List<Role> roleList = userInfoByUsername.getRoleList();
        List<SimpleGrantedAuthority> authoritys = getAuthority(roleList);

        return new User(userInfoByUsername.getUsername(), userInfoByUsername.getPassword(), userInfoByUsername.getStatus() == 1, true, true, true, authoritys);
    }

    private List<SimpleGrantedAuthority> getAuthority(List<Role> roles) {
        List<SimpleGrantedAuthority> authoritys = new ArrayList<SimpleGrantedAuthority>();
        for (Role role : roles) {
            authoritys.add(new SimpleGrantedAuthority("ROLE_"+role.getRoleName()));
        }
        return authoritys;
    }

    @Override
    @Transactional(readOnly = true)
    public List<UserInfo> listUserInfoByPage(int page, int pageSize) throws Exception {
        PageHelper.startPage(page, pageSize);
        return userDao.listUserInfoByPage();
    }

    @Override
    @Transactional(readOnly = true)
    public UserInfo getUserInfoById(String id) throws Exception {
        return userDao.getUserInfoById(id);
    }

    @Override
    public void save(UserInfo userInfo) throws Exception {
        userInfo.setPassword(bCryptPasswordEncoder.encode(userInfo.getPassword()));
        userDao.save(userInfo);
    }

    @Override
    public UserInfo getUserByIdAndAllRole(String id) throws Exception {
        UserInfo userInfo = userDao.getUserInfoById(id);

        return userInfo;
    }

    @Override
    public List<Role> listOtherRoleListByUserId(String id) throws Exception {

        return userDao.listOtherRoleList(id);
    }

    @Override
    public void saveRole2User(String userId, String[] ids) throws Exception {
        for (int i = 0; i < ids.length; i++) {
            userDao.saveRole2User(userId,ids[i]);
        }
    }
}
