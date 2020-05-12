package com.yiju.pojo;

public class CollectView {
    private int collId;
    private int userId;
    private int houseId;
    private int idDelete;
    private long createTime;
    private long updateTime;
    private String houseTitle;
    private String houseHeadimg;
    private String houseAddress;

    public int getCollId() {
        return collId;
    }

    public void setCollId(int collId) {
        this.collId = collId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getHouseId() {
        return houseId;
    }

    public void setHouseId(int houseId) {
        this.houseId = houseId;
    }

    public int getIdDelete() {
        return idDelete;
    }

    public void setIdDelete(int idDelete) {
        this.idDelete = idDelete;
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

    public String getHouseAddress() {
        return houseAddress;
    }

    public void setHouseAddress(String houseAddress) {
        this.houseAddress = houseAddress;
    }

    @Override
    public String toString() {
        return "CollectView{" +
                "collId=" + collId +
                ", userId=" + userId +
                ", houseId=" + houseId +
                ", idDelete=" + idDelete +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", houseTitle='" + houseTitle + '\'' +
                ", houseHeadimg='" + houseHeadimg + '\'' +
                ", houseAddress='" + houseAddress + '\'' +
                '}';
    }
}
