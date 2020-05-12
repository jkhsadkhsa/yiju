package com.yiju.bean;

/**
 * 收藏类
 */
public class Collect {

    private int collId; //收藏记录的唯一标识ID
    private int userId; //用户ID
    private int houseId; //用户收藏的房源ID
    private int isDelete; //是否删除 0-未删除 1-已删除
    private long createTime; //创建时间
    private long updateTime; //更新时间

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
        return "Collect{" +
                "collId=" + collId +
                ", userId=" + userId +
                ", houseId=" + houseId +
                ", isDelete=" + isDelete +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
