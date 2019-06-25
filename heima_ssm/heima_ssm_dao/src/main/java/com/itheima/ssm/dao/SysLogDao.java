package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Syslog;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SysLogDao {

    @Select("select * from syslog")
    @Results({
            @Result(id = true,column = "id",property = "id"),
            @Result(column = "visittime",property = "visitTime"),
            @Result(column = "username",property = "username"),
            @Result(column = "ip",property = "ip"),
            @Result(column = "url",property = "url"),
            @Result(column = "executiontime",property = "executionTime"),
            @Result(column = "method",property = "method"),
            @Result(column = "operation",property = "operation")
    })
    List<Syslog> listSyslog() throws Exception;


    @Insert("insert into syslog (visittime,username,ip,url,executiontime,method) values (#{visitTime},#{username},#{ip},#{url},#{executionTime},#{method})")
    void save(Syslog syslog) throws Exception;
}
