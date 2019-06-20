package com.itheima.ssm.domain;


import com.itheima.ssm.util.DateUtils;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Product {

    private String id;//id 唯一 无特殊意义
    private String productNum; //主键
    private String productName;//名称
    private String cityName;//城市名
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date departureTime;//日期
    private String departureTimeStr;//日期字符串
    private Double productPrice;//金额
    private String productDesc;//描述
    private Integer productStatus;//状态 0关闭 1开启
    private String productStatusStr;//状态字符串

    public String getdepartureTimeStr() {
        if (departureTime != null) {
            departureTimeStr = DateUtils.date2Str(departureTime, "yyyy-MM-dd HH:mm:ss");
        }
        return departureTimeStr;
    }

    public void setdepartureTimeStr(String departureTimeStr) {
        /*if (departureTime != null) {
            departureTimeStr = DateUtils.date2Str(departureTime, "yyyy-MM-dd HH:mm:ss");
        }*/
        this.departureTimeStr = departureTimeStr;
    }

    public String getproductStatusStr() {
        if (productStatus != null) {
            if (productStatus == 0) productStatusStr = "关闭";
            if (productStatus == 1) productStatusStr = "开启";
        }
        return productStatusStr;
    }

    public void setproductStatusStr(String productStatusStr) {
        this.productStatusStr = productStatusStr;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getproductNum() {
        return productNum;
    }

    public void setproductNum(String productNum) {
        this.productNum = productNum;
    }


    public String getproductName() {
        return productName;
    }

    public void setproductName(String productName) {
        this.productName = productName;
    }


    public String getcityName() {
        return cityName;
    }

    public void setcityName(String cityName) {
        this.cityName = cityName;
    }


    public Date getdepartureTime() {
        return departureTime;
    }

    public void setdepartureTime(Date departureTime) {
        this.departureTime = departureTime;
    }


    public Double getproductPrice() {
        return productPrice;
    }

    public void setproductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }


    public String getproductDesc() {
        return productDesc;
    }

    public void setproductDesc(String productDesc) {
        this.productDesc = productDesc;
    }


    public Integer getproductStatus() {
        return productStatus;
    }

    public void setproductStatus(Integer productStatus) {
        this.productStatus = productStatus;
    }

}
