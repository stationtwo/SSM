package com.itheima.ssm.domain;


import com.itheima.ssm.util.DateUtils;

import java.util.Date;

public class Product {

    private String id;//id 唯一 无特殊意义
    private String productnum; //主键
    private String productname;//名称
    private String cityname;//城市名
    private Date departuretime;//日期
    private String departuretimestr;//日期字符串
    private Double productprice;//金额
    private String productdesc;//描述
    private Integer productstatus;//状态 0关闭 1开启
    private String productstatusstr;//状态字符串

    public String getDeparturetimestr() {
        if (departuretime != null) {
            departuretimestr = DateUtils.getStr(departuretime, "yyyy-MM-dd HH:mm:ss");
        }
        return departuretimestr;
    }

    public void setDeparturetimestr(String departuretimestr) {
        if (departuretime != null) {
            departuretimestr = DateUtils.getStr(departuretime, "yyyy-MM-dd HH:mm:ss");
        }
        this.departuretimestr = departuretimestr;
    }

    public String getProductstatusstr() {
        if (productstatus != null) {
            if (productstatus == 0) productstatusstr = "关闭";
            if (productstatus == 1) productstatusstr = "开启";
        }
        return productstatusstr;
    }

    public void setProductstatusstr(String productstatusstr) {
        this.productstatusstr = productstatusstr;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getProductnum() {
        return productnum;
    }

    public void setProductnum(String productnum) {
        this.productnum = productnum;
    }


    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }


    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }


    public Date getDeparturetime() {
        return departuretime;
    }

    public void setDeparturetime(Date departuretime) {
        this.departuretime = departuretime;
    }


    public Double getProductprice() {
        return productprice;
    }

    public void setProductprice(Double productprice) {
        this.productprice = productprice;
    }


    public String getProductdesc() {
        return productdesc;
    }

    public void setProductdesc(String productdesc) {
        this.productdesc = productdesc;
    }


    public Integer getProductstatus() {
        return productstatus;
    }

    public void setProductstatus(Integer productstatus) {
        this.productstatus = productstatus;
    }

}
