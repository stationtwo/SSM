package com.itheima.ssm.domain;


import org.springframework.security.core.userdetails.User;

import java.util.List;

public class Role {
  private String id;
  private String roleName;
  private String roleDesc;
  private List<Permission> permissionList;
  private List<UserInfo> userList;


  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getRoleName() {
    return roleName;
  }

  public void setRoleName(String roleName) {
    this.roleName = roleName;
  }

  public String getRoleDesc() {
    return roleDesc;
  }

  public void setRoleDesc(String roleDesc) {
    this.roleDesc = roleDesc;
  }

  public List<Permission> getPermissionList() {
    return permissionList;
  }

  public void setPermissionList(List<Permission> permissionList) {
    this.permissionList = permissionList;
  }

  public List<UserInfo> getUserList() {
    return userList;
  }

  public void setUserList(List<UserInfo> userList) {
    this.userList = userList;
  }
}
