package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Role;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface RoleDao {


    @Select("select * from role where id in (select roleid from users_role where userid = #{id})")
    @Results({
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "rolename", property = "roleName"),
            @Result(column = "roledesc", property = "roleDesc"),
            @Result(column = "id",property = "permissionList",javaType = java.util.List.class,many = @Many(select = "com.itheima.ssm.dao.PermissionDao.listPermissionByRoleId"))
    })
    List<Role> listRoleByUserId(String id) throws Exception;

    @Select("select * from role")
    List<Role> listRoleByPage() throws Exception;


    @Select("select * from role where id in (select roleid from role_permission where permissionid = #{id})")
    @Results({
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "rolename", property = "roleName"),
            @Result(column = "roledesc", property = "roleDesc"),
//            @Result(column = "id",property = "userList",javaType = java.util.List.class,many = @Many(select = "com.itheima.ssm.dao.UserDao.listUserByRoleId"))
    })
    List<Role> listRoleByPermissionId(String id) throws Exception;

    @Insert("insert into role (rolename,roledesc) values (#{roleName},#{roleDesc})")
    void save(Role role) throws Exception;

}
