package com.itheima.ssm.domain;

import com.itheima.ssm.util.DateUtils;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class Orders {
    private String id;//主键 无意义
    private String orderNum;//订单编号 唯一非空
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date orderTime;//订单日期
    private String orderTimeStr;//日期字符串
    private Integer peopleCount;//人数
    private String orderDesc;//订单描述
    private Integer payType;//支付类型(0 支付宝  1 微信 2 其他)
    private String payTypeStr;
    private Integer orderStatus;
    private String orderStatusStr;//0 未支付,1 已支付
    private String productId;//产品id
    private Product product;//产品列表
    private String MemberId;//会员id(联系人)
    private List<Member> memberList;//联系人列表

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public Product getproduct() {
        return product;
    }

    public void setproduct(Product product) {
        this.product = product;
    }

    public String getMemberId() {
        return MemberId;
    }

    public void setMemberId(String memberId) {
        MemberId = memberId;
    }

    public List<Member> getMemberList() {
        return memberList;
    }

    public void setMemberList(List<Member> memberList) {
        this.memberList = memberList;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderTimeStr() {
        if (orderTime != null) {
            orderTimeStr = DateUtils.date2Str(orderTime, "yyyy-MM-dd HH:mm:ss");
        }
        return orderTimeStr;
    }

    public void setOrderTimeStr(String orderTimeStr) {
        this.orderTimeStr = orderTimeStr;
    }

    public Integer getpeopleCount() {
        return peopleCount;
    }

    public void setpeopleCount(Integer peopleCount) {
        this.peopleCount = peopleCount;
    }

    public String getOrderDesc() {
        return orderDesc;
    }

    public void setOrderDesc(String orderDesc) {
        this.orderDesc = orderDesc;
    }

    public Integer getPayType() {
        return payType;
    }

    public void setPayType(Integer payType) {
        this.payType = payType;
    }

    public String getPayTypeStr() {
        if (payType != null) {
            if (payType == 0) {
                payTypeStr = "支付宝";
            }
            if (payType == 1) {
                payTypeStr = "微信";
            }
            if (payType == 2) {
                payTypeStr = "其他";
            }
        }

        return payTypeStr;
    }

    public void setPayTypeStr(String payTypeStr) {
        this.payTypeStr = payTypeStr;
    }

    public Integer getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Integer orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getOrderStatusStr() {
        if (orderStatus != null) {
            if (orderStatus == 0) {
                orderStatusStr = "未支付";
            }
            if (orderStatus == 1) {
                orderStatusStr = "已支付";
            }
        }
        return orderStatusStr;
    }

    public void setOrderStatusStr(String orderStatusStr) {
        this.orderStatusStr = orderStatusStr;
    }
}
