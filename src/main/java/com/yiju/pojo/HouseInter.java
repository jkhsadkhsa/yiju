package com.yiju.pojo;

/**
 * 出租房屋内饰表
 */
public class HouseInter {

    private int interId; //内饰表ID
    private int houseId; //对应房源id
    private int bed; //床：0无 1有
    private int washing; //洗衣机：0无 1有
    private int air; //空调: 0无 1有
    private int balcony; //阳台：0无 1有
    private int ice; //冰箱：0无 1有
    private int toilet; //卫生间：0无 1有
    private int kitchen; //厨房：0无 1有
    private int tv; //电视：0无 1有
    private int heater; //热水器：0无 1有
    private int wardrobe; //衣柜：0无 1有
    private int heating; //暖气：0无 1有
    private int internet; //宽带：0无 1有
    private int sofa; //沙发：0无 1有
    private long createTime; //创建时间
    private long updateTime; //更新时间

    public int getInterId() {
        return interId;
    }

    public void setInterId(int interId) {
        this.interId = interId;
    }

    public int getHouseId() {
        return houseId;
    }

    public void setHouseId(int houseId) {
        this.houseId = houseId;
    }

    public int getBed() {
        return bed;
    }

    public void setBed(int bed) {
        this.bed = bed;
    }

    public int getWashing() {
        return washing;
    }

    public void setWashing(int washing) {
        this.washing = washing;
    }

    public int getAir() {
        return air;
    }

    public void setAir(int air) {
        this.air = air;
    }

    public int getBalcony() {
        return balcony;
    }

    public void setBalcony(int balcony) {
        this.balcony = balcony;
    }

    public int getIce() {
        return ice;
    }

    public void setIce(int ice) {
        this.ice = ice;
    }

    public int getToilet() {
        return toilet;
    }

    public void setToilet(int toilet) {
        this.toilet = toilet;
    }

    public int getKitchen() {
        return kitchen;
    }

    public void setKitchen(int kitchen) {
        this.kitchen = kitchen;
    }

    public int getTv() {
        return tv;
    }

    public void setTv(int tv) {
        this.tv = tv;
    }

    public int getHeater() {
        return heater;
    }

    public void setHeater(int heater) {
        this.heater = heater;
    }

    public int getWardrobe() {
        return wardrobe;
    }

    public void setWardrobe(int wardrobe) {
        this.wardrobe = wardrobe;
    }

    public int getHeating() {
        return heating;
    }

    public void setHeating(int heating) {
        this.heating = heating;
    }

    public int getInternet() {
        return internet;
    }

    public void setInternet(int internet) {
        this.internet = internet;
    }

    public int getSofa() {
        return sofa;
    }

    public void setSofa(int sofa) {
        this.sofa = sofa;
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
        return "HouseInter{" +
                "interId=" + interId +
                ", houseId=" + houseId +
                ", bed=" + bed +
                ", washing=" + washing +
                ", air=" + air +
                ", balcony=" + balcony +
                ", ice=" + ice +
                ", toilet=" + toilet +
                ", kitchen=" + kitchen +
                ", tv=" + tv +
                ", heater=" + heater +
                ", wardrobe=" + wardrobe +
                ", heating=" + heating +
                ", internet=" + internet +
                ", sofa=" + sofa +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
