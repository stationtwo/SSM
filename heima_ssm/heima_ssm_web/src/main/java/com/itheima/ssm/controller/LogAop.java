package com.itheima.ssm.controller;

import com.itheima.ssm.domain.Syslog;
import com.itheima.ssm.service.SysLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;

@Component
@Aspect
public class LogAop {
    @Autowired
    private HttpServletRequest request;

    @Autowired
    private SysLogService sysLogService;

    /*
    *   String id;
        Date visitTime;
        String visitTimeStr;
        String operation;
        String username;
        String ip;
        String url;
        Long executionTime;
        String method;
    * */
    private Method method;
    private Class executionClass;
    private Date visitTime;

    // 主要获取访问时间、访问的类、访问的方法
    @Before("myPointcut()")
    public void before(JoinPoint joinPoint) throws Exception {
        executionClass = joinPoint.getTarget().getClass();//被访问的类
        visitTime = new Date();//访问时间
        String methodName = joinPoint.getSignature().getName();//访问的方法的名称
        Object[] args = joinPoint.getArgs();
        if (args != null && args.length != 0) {
            //有参数
            // 有参数，就将args中所有元素遍历，获取对应的Class,装入到一个Class[]
            Class[] classArgs = new Class[args.length];
            //遍历
            for (int i = 0; i < args.length; i++) {
                classArgs[i] = args[i].getClass();
            }

            //获取有参数方法
            method = executionClass.getMethod(methodName, classArgs);
        } else {
            //无参数
            method = executionClass.getMethod(methodName);
        }

        /*String name = aClass.getName();
        switch (name){
            case "":
                break;
            case "":
                break;
            case "":
                break;
            case "":
                break;
            case "":
                break;
            case "":
                break;
            case "":
                break;
        }*/

    }


    //执行方法


    // 主要获取日志中其它信息，时长、ip、url...
    @AfterReturning("myPointcut()")
    public void after(JoinPoint joinPoint) throws Exception{
        //获取ip
        String ip = request.getRemoteAddr();
        String url = request.getRequestURL().toString();


        //获取访问时长
        Long executionTime = new Date().getTime() - visitTime.getTime();
        //获取访问用户
        SecurityContext context = (SecurityContext) request.getSession().getAttribute("SPRING_SECURITY_CONTEXT");
        SecurityContext context1 = SecurityContextHolder.getContext();
        String username = ((User) context.getAuthentication().getPrincipal()).getUsername();
        String name = context1.getAuthentication().getName();

        //封装Syslog
        Syslog syslog = new Syslog();
        syslog.setVisitTime(visitTime);
        syslog.setExecutionTime(executionTime);
        syslog.setIp(ip);
        syslog.setMethod("类名"+executionClass.getName()+"[方法名]"+method.getName());
        syslog.setUrl(url);
        syslog.setUsername(username);

        //保存日志
        sysLogService.save(syslog);

    };

    @Pointcut(value = "!execution( * com.itheima.ssm.controller.SysLogController.*(..)) && execution(* com.itheima.ssm.controller.*.*(..)) ")
    public void myPointcut() {
    }

    ;
}
