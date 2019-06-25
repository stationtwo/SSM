package com.itheima.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Role;
import com.itheima.ssm.domain.UserInfo;
import com.itheima.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PreAuthorize("authentication.principal.username == 'admin'")//访问save方法的用户必须是"admin"
    @RequestMapping("/save.do")
    public String save(UserInfo userInfo) throws Exception{
        userService.save(userInfo);
        return "redirect:findAll.do";
    }

    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name = "id",required = true) String id) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        UserInfo user = userService.getUserInfoById(id);
        modelAndView.setViewName("user-show");
        modelAndView.addObject("user", user);
        return modelAndView;
    }

    @RolesAllowed("ADMIN")//用户必须有admin这个角色才可以查询
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(required = false,name = "page",defaultValue = "1") Integer page,@RequestParam(defaultValue = "3",name = "pageSize",required = false) Integer pageSize) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<UserInfo> userInfoList = userService.listUserInfoByPage(page, pageSize);
        PageInfo<UserInfo> pageInfo = new PageInfo<UserInfo>(userInfoList,5);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("user-list");
        return mv;
    }


    @RequestMapping("/findUserByIdAndAllRole.do")
    public ModelAndView findUserByIdAndAllRole(String id) throws Exception {
        ModelAndView mv = new ModelAndView();
        UserInfo user = userService.getUserByIdAndAllRole(id);
        List<Role> otherRoleList = userService.listOtherRoleListByUserId(id);
        mv.addObject("user", user);
        mv.addObject("roleList", otherRoleList);
        mv.setViewName("user-role-add");
        return mv;
    }
    @RequestMapping("/addRoleToUser.do")
    public String addRoleToUser(String userId,String[] ids) throws Exception {
        userService.saveRole2User(userId,ids);
        return "redirect:findAll.do";
    }
}
