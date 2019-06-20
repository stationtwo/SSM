package com.itheima.ssm.service;

import com.itheima.ssm.domain.Account;

import java.util.List;

public interface AccountService {
    /**
     * 转账操作
     * @param outName
     * @param inName
     * @param price
     */
    void transfer(String outName, String inName, Double price);

    /**
     * 根据姓名
     * 查询一个账户
     * @param aname
     * @return
     */
    Account selectAccount(String aname);

    /**
     * 查询所有账户
     * @return
     */
    List<Account> listAccount();
}
