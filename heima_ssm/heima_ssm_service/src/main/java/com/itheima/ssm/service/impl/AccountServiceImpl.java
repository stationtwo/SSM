package com.itheima.ssm.service.impl;

import com.itheima.ssm.dao.AccountDao;
import com.itheima.ssm.domain.Account;
import com.itheima.ssm.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountDao accountDao;
    @Override
//    @Transactional(readOnly = true)
    public void transfer(String outName,String inName, Double price) {
        Map<String, Object> outMap = new LinkedHashMap<String, Object>();
        outMap.put("outName", outName);
        outMap.put("outPrice", price);
        accountDao.outPrice(outMap);
        Map<String, Object> inMap = new LinkedHashMap<String, Object>();
        inMap.put("inName", inName);
        inMap.put("inPrice", price);
//        int i = 1/0;
        accountDao.inPrice(inMap);
    }

    @Override
    public Account selectAccount(String aname) {
        Account account = accountDao.selectOne(aname);
        return account;
    }

    @Override
    public List<Account> listAccount() {
        List<Account> accountList = accountDao.listAccount();
        return accountList;
    }
}
