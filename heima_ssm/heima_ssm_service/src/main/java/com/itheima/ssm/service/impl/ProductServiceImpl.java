package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.itheima.ssm.dao.ProductDao;
import com.itheima.ssm.domain.Product;
import com.itheima.ssm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    @Override
    @Transactional(readOnly = true)
    public PageInfo<Product> listProductByPage(int page,int pageSize) throws Exception {
        PageHelper.startPage(page, pageSize);
        List<Product> productList = productDao.listProductByPage();
        PageInfo<Product> pageInfo = new PageInfo<Product>(productList, 5);
        return pageInfo;
    }

    @Override
    public void save(Product product) throws Exception {
        productDao.save(product);
    }
}
