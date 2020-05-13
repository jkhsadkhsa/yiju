package com.yiju.pojo;

/**
 * 房屋信息表
 */
public class HouseInfo {

    private int infoId; //房源详细信息表唯一标识ID
    private int houseId; //对应房源表唯一ID
    private String houseNature; //房源性质:商品房 住宅房
    private String houseModel; //普通式住宅 公寓式住宅 别墅 独栋
    private int houseYear; //房源建造时间
    private String houseValid; //房源期限: 70年、100年、永久
    private String houseLayout; //房源户型：几室几厅几卫
    private String houseArea; //房源面积
    private String houseTurn; //朝向
    private int houseFloor; //楼层
    private int floorAll; //总楼层
    private String houseDecorate; //装饰类型：精装 简装
    private String houseLift; //是否有电梯: 0无 1有
    private long createTime; //创建时间
    private long updateTime; //更新时间

    public int getInfoId() {
        return infoId;
    }

    public void setInfoId(int infoId) {
        this.infoId = infoId;
    }

    public int getHouseId() {
        return houseId;
    }

    public void setHouseId(int houseId) {
        this.houseId = houseId;
    }

    public String getHouseNature() {
        return houseNature;
    }

    public void setHouseNature(String houseNature) {
        this.houseNature = houseNature;
    }

    public String getHouseModel() {
        return houseModel;
    }

    public void setHouseModel(String houseModel) {
        this.houseModel = houseModel;
    }

    public int getHouseYear() {
        return houseYear;
    }

    public void setHouseYear(int houseYear) {
        this.houseYear = houseYear;
    }

    public String getHouseValid() {
        return houseValid;
    }

    public void setHouseValid(String houseValid) {
        this.houseValid = houseValid;
    }

    public String getHouseLayout() {
        return houseLayout;
    }

    public void setHouseLayout(String houseLayout) {
        this.houseLayout = houseLayout;
    }

    public String getHouseArea() {
        return houseArea;
    }

    public void setHouseArea(String houseArea) {
        this.houseArea = houseArea;
    }

    public String getHouseTurn() {
        return houseTurn;
    }

    public void setHouseTurn(String houseTurn) {
        this.houseTurn = houseTurn;
    }

    public int getHouseFloor() {
        return houseFloor;
    }

    public void setHouseFloor(int houseFloor) {
        this.houseFloor = houseFloor;
    }

    public int getFloorAll() {
        return floorAll;
    }

    public void setFloorAll(int floorAll) {
        this.floorAll = floorAll;
    }

    public String getHouseDecorate() {
        return houseDecorate;
    }

    public void setHouseDecorate(String houseDecorate) {
        this.houseDecorate = houseDecorate;
    }

    public String getHouseLift() {
        return houseLift;
    }

    public void setHouseLift(String houseLift) {
        this.houseLift = houseLift;
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
        return "HouseInfo{" +
                "infoId=" + infoId +
                ", houseId=" + houseId +
                ", houseNature='" + houseNature + '\'' +
                ", houseModel='" + houseModel + '\'' +
                ", houseYear=" + houseYear +
                ", houseValid='" + houseValid + '\'' +
                ", houseLayout='" + houseLayout + '\'' +
                ", houseArea='" + houseArea + '\'' +
                ", houseTurn='" + houseTurn + '\'' +
                ", houseFloor=" + houseFloor +
                ", floorAll=" + floorAll +
                ", houseDecorate='" + houseDecorate + '\'' +
                ", houseLift='" + houseLift + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
