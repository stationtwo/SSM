package com.itheima.ssm.test;

import com.itheima.ssm.domain.Account;
import com.itheima.ssm.service.AccountService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class AccountServiceImplTest {
    @Autowired
    private AccountService accountService;

    @Test
    public void transfer() {
        accountService.transfer("尹志平", "小龙女", 500.00);
    }

    @Test
    public void selectAccount() {
        Account account = accountService.selectAccount("尹志平");
        Assert.assertNotNull(account);
    }

    @Test
    public void listAccount() {
        List<Account> accountList = accountService.listAccount();
        for (Account account : accountList) {
            System.out.println(account.getAname() + ", " + account.getPrice());
        }

    }
}