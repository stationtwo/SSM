package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Account;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
import java.util.Map;

public interface AccountDao {

    @Select("select * from account where aname = #{aname}")
    Account selectOne(String aname);


    @Update("update account set price = (price - #{outPrice}) where aname = #{outName}")
    void outPrice(Map<String,Object> map);

    @Update("update account set price = (price + #{inPrice}) where aname = #{inName}")
    void inPrice(Map<String,Object> map);

    @Select("select * from account")
    List<Account> listAccount();
}
