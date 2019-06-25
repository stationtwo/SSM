package com.itheima.ssm.service;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Product;

public interface ProductService {
    PageInfo<Product> listProductByPage(int page,int pageSize) throws Exception;

    void save(Product product) throws Exception;
}
