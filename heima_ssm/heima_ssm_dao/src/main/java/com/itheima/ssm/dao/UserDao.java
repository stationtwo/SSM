package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Role;
import com.itheima.ssm.domain.UserInfo;
import org.apache.ibatis.annotations.*;
import org.springframework.security.access.annotation.Secured;

import java.util.List;

public interface UserDao {

    @Select("select * from users where username = #{username}")
    @Results({
            @Result(id = true,column = "id",property = "id"),
            @Result(column = "email", property = "email"),
            @Result(column = "username", property = "username"),
            @Result(column = "password", property = "password"),
            @Result(column = "phonenum", property = "phoneNum"),
            @Result(column = "status", property = "status"),
            @Result(column = "id", property = "roleList",javaType = java.util.List.class,many = @Many(select = "com.itheima.ssm.dao.RoleDao.listRoleByUserId"))
    })
    UserInfo getUserInfoByUsername(String username) throws Exception;



    @Select("select * from users")
    List<UserInfo> listUserInfoByPage() throws Exception;


    @Select("select * from users where id = #{id}")
    @Results({
            @Result(id = true,column = "id",property = "id"),
            @Result(column = "email", property = "email"),
            @Result(column = "username", property = "username"),
            @Result(column = "password", property = "password"),
            @Result(column = "phonenum", property = "phoneNum"),
            @Result(column = "status", property = "status"),
            @Result(column = "id", property = "roleList",javaType = java.util.List.class,many = @Many(select = "com.itheima.ssm.dao.RoleDao.listRoleByUserId")),
    })
    UserInfo getUserInfoById(String id) throws Exception;

    @Insert("insert into users (email,username,password,phoneNum,status) values (#{email},#{username},#{password},#{phoneNum},#{status})")
    void save(UserInfo userInfo) throws Exception;


    @Select("select * from users where id in (select userId from users_role where roleid = #{id)")
    List<UserInfo> listUserByRoleId(String id) throws Exception;

    @Select("select * from role where id not in (select roleid from users_role where userid = #{id})")
    List<Role> listOtherRoleList(String id);

    @Insert("insert into users_role values(#{userId},#{roleId})")
    void saveRole2User(@Param("userId") String userId, @Param("roleId") String roleId) throws Exception;
}
