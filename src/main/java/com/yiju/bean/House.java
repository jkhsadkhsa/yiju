package com.yiju.bean;

import java.math.BigDecimal;

/**
 * 房屋表
 */
public class House {

    private int houseId; //房源表唯一标识ID
    private int userId; //发布此房源的用户ID
    private int houseType; //房源类型 0:新房 1:旧房 2:租房
    private String houseTitle; //房源帖子标题
    private String houseHeadimg; //房源帖子头像
    private String housePlanimg1; //房屋户型平面图1 外键
    private String housePlanimg2; //房屋户型平面图2 外键
    private String houseImg1; //房源室内图1
    private String houseImg2; //房源室内图2
    private String houseImg3; //房源室内图3
    private String houseImg4; //房源室内图4
    private String houseImg5; //房源室内图5
    private String houseImg6; //房源室内图6
    private BigDecimal housePrice; //房源预计售价
    private String priceUnit; //售价单位 元/每月 元/每套 元/每年
    private String houseAddress; //房源地址
    private int isDelete; //0:未删除 1:已删除
    private long createTime; //创建时间
    private long updateTime; //更新时间

    public int getHouseId() {
        return houseId;
    }

    public void setHouseId(int houseId) {
        this.houseId = houseId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getHouseType() {
        return houseType;
    }

    public void setHouseType(int houseType) {
        this.houseType = houseType;
    }

    public String getHouseTitle() {
        return houseTitle;
    }

    public void setHouseTitle(String houseTitle) {
        this.houseTitle = houseTitle;
    }

    public String getHouseHeadimg() {
        return houseHeadimg;
    }

    public void setHouseHeadimg(String houseHeadimg) {
        this.houseHeadimg = houseHeadimg;
    }

    public String getHousePlanimg1() {
        return housePlanimg1;
    }

    public void setHousePlanimg1(String housePlanimg1) {
        this.housePlanimg1 = housePlanimg1;
    }

    public String getHousePlanimg2() {
        return housePlanimg2;
    }

    public void setHousePlanimg2(String housePlanimg2) {
        this.housePlanimg2 = housePlanimg2;
    }

    public String getHouseImg1() {
        return houseImg1;
    }

    public void setHouseImg1(String houseImg1) {
        this.houseImg1 = houseImg1;
    }

    public String getHouseImg2() {
        return houseImg2;
    }

    public void setHouseImg2(String houseImg2) {
        this.houseImg2 = houseImg2;
    }

    public String getHouseImg3() {
        return houseImg3;
    }

    public void setHouseImg3(String houseImg3) {
        this.houseImg3 = houseImg3;
    }

    public String getHouseImg4() {
        return houseImg4;
    }

    public void setHouseImg4(String houseImg4) {
        this.houseImg4 = houseImg4;
    }

    public String getHouseImg5() {
        return houseImg5;
    }

    public void setHouseImg5(String houseImg5) {
        this.houseImg5 = houseImg5;
    }

    public String getHouseImg6() {
        return houseImg6;
    }

    public void setHouseImg6(String houseImg6) {
        this.houseImg6 = houseImg6;
    }

    public BigDecimal getHousePrice() {
        return housePrice;
    }

    public void setHousePrice(BigDecimal housePrice) {
        this.housePrice = housePrice;
    }

    public String getPriceUnit() {
        return priceUnit;
    }

    public void setPriceUnit(String priceUnit) {
        this.priceUnit = priceUnit;
    }

    public String getHouseAddress() {
        return houseAddress;
    }

    public void setHouseAddress(String houseAddress) {
        this.houseAddress = houseAddress;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    public long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(long createTime) {
        this.createTime = createTime;
    }

    public long getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(long updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "House{" +
                "houseId=" + houseId +
                ", userId=" + userId +
                ", houseType=" + houseType +
                ", houseTitle='" + houseTitle + '\'' +
                ", houseHeadimg='" + houseHeadimg + '\'' +
                ", housePlanimg1='" + housePlanimg1 + '\'' +
                ", housePlanimg2='" + housePlanimg2 + '\'' +
                ", houseImg1='" + houseImg1 + '\'' +
                ", houseImg2='" + houseImg2 + '\'' +
                ", houseImg3='" + houseImg3 + '\'' +
                ", houseImg4='" + houseImg4 + '\'' +
                ", houseImg5='" + houseImg5 + '\'' +
                ", houseImg6='" + houseImg6 + '\'' +
                ", housePrice=" + housePrice +
                ", priceUnit='" + priceUnit + '\'' +
                ", houseAddress='" + houseAddress + '\'' +
                ", isDelete=" + isDelete +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
