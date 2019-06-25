package com.itheima.ssm.controller;
import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Permission;
import com.itheima.ssm.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
@RequestMapping("/permission")
public class PermissionController {
    @Autowired
    private PermissionService permissionService;

    @RequestMapping("/findById.do")
    public ModelAndView findById(String id) throws Exception{
        ModelAndView mv = new ModelAndView();
        Permission permission = permissionService.getPermissionById(id);
        mv.addObject("permission", permission);
        mv.setViewName("permission-show");
        return mv;
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")//访问findAll方法是用户必须具有ADMIN角色
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(required = false,defaultValue = "1") Integer page,@RequestParam(defaultValue = "3",required = false) Integer pageSize) throws Exception{
        ModelAndView mv = new ModelAndView();
        List<Permission> permissionList = permissionService.listPermissionByPage(page, pageSize);
        PageInfo<Permission> pageInfo = new PageInfo<Permission>(permissionList,5);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("permission-list");
        return mv;
    }

    @RequestMapping("/save.do")
    public String save(Permission permission) throws Exception{
        permissionService.save(permission);

        return "redirect:findAll.do";
    }
}
