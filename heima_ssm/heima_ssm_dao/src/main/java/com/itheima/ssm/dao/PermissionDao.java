package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Permission;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Service;

import java.util.List;

public interface PermissionDao {

    @Select("select * from permission where id in (select permissionid from role_permission where roleid = #{roleId})")
    List<Permission> listPermissionByRoleId(String roleId) throws Exception;

    @Select("select * from permission")
    List<Permission> listPermission() throws Exception;

    @Select("select * from permission where id = #{id}")
    @Results({
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "permissionname", property = "permissionName"),
            @Result(column = "url", property = "url"),
            @Result(column = "id",property = "roleList",javaType = java.util.List.class,many = @Many(select = "com.itheima.ssm.dao.RoleDao.listRoleByPermissionId"))
    })
    Permission getPermissionById(String id) throws Exception;


    @Insert("insert into permission(permissionname,url) values (#{permissionName},#{url})")
    void save(Permission permission) throws Exception;
}
